Android 开发总结
===

忙碌的一个月终于结束了，因为老板觉得我天天在公司就负责扫地，有点物过其用。就让我接手了一个同事离职的安卓代码。因为这个属于外包吧，有明确的时间要求，所以就只能天天加班来实现。

不过，在实现的过程中，确实找到了一些共性的东西。这边拿出来分享下。

###选用的设计模式 MVP
首先就是安卓项目的代码划分。之前的说法，都是MVC式的划分方式，所以会出现一个问题。Activity 中代码杂糅。所以之后就出现了 MVP 的设计模式，也算是在 MVVM 成熟之前的一个过渡方案吧。

所以这样的代码设计起来是这样的：

```
Ξ src/main git:(master) ▶ tree
.
├── java
│   └── com
│       └── szjlxh
│           └── ehs
│               ├── presenters
│               │   ├── ABasePresenter.java
│               │   ├── about
│               │   │   └── AboutPresenter.java
│               │   ├── account
│               │   │   └── RegisterPresenter.java
│               │   ├── friend
│               │   │   └── VoicePresenter.java
│               │   └── worktable
│               │       └── MyTaskPresenter.java
│               └── views
│                   ├── AndroidApplication.java
│                   ├── Navigator.java
│                   ├── activities
│                   │   ├── law
│                   │   │   └── RemindNoticeActivity.java
│                   │   ├── order
│                   │   │   ├── OrderDetailActivity.java
│                   │   │   └── SearchOrderActivity.java
│                   │   ├── task
│                   │       └── VoiceTestActivity.java
│                   ├── adapters
│                   │   ├── TaskLawAttachAdapter.java
│                   │   └── TaskSortsAdapter.java
│                   └── fragments
│                       ├── IFragmentLifeCycle.java
│                       ├── IProfileView.java
│                       ├── ProfileFragment.java
│                       ├── base
│                       │   └── BaseFragment.java
│                       ├── ehsgroup
│                       │   ├── EhsGroupFragment.java
│                       │   └── tabs
│                       │       └── News.java
│                       ├── law
│                       │   └── LawFragment.java
│                       └── worktable
│                           ├── WorkTableFragment.java
│                           └── tabs
│                               ├── MyOrders.java
│                               ├── MyTask.java
│                               └── ReceivedTask.java
```

这样的一个设计，从逻辑上将对控件的操作，都放到 Presenter 中，从而减少了 Activity 的代码冗余。所以会在 Presenter 中传入一个 Activity 的实例。

###异步网络请求处理
这一块，因为我们的这个业务我们采用了 UseCase 的模式，然后通过 RxJava 的帮助，将异步的程序写成了串行。比如，通过请求获取数据显示在前台的逻辑是这样的：
```
    public void getNewestVersion() {
        this.checkAppVersionUseCase.execute(new Subscriber<VersionInfo>() {
            @Override
            public void onCompleted() {}

            @Override
            public void onError(Throwable e) {
                e.printStackTrace();
                aboutActivity.onError(e);
            }

            @Override
            public void onNext(VersionInfo versionInfo) {
                aboutActivity.onVersionChecked(versionInfo);
            }
        });
    }
```

这个所谓的 UseCase 本质其实就是在执行 RxJava 逻辑的时候使代码更好的理解。他的核心代码如下：
```
public abstract class UseCase {

    private final ThreadExecutor      threadExecutor;
    private final PostExecutionThread postExecutionThread;

    private Subscription subscription = Subscriptions.empty();

    protected UseCase(ThreadExecutor threadExecutor,
                      PostExecutionThread postExecutionThread) {
        this.threadExecutor = threadExecutor;
        this.postExecutionThread = postExecutionThread;
    }

    protected abstract Observable buildUseCaseObservable();

    public void execute(Subscriber UseCaseSubscriber) {
        this.subscription = this.buildUseCaseObservable()
                                .subscribeOn(Schedulers.from(threadExecutor))
                                .observeOn(postExecutionThread.getScheduler())
                                .subscribe(UseCaseSubscriber);
    }

    public void unsubscribe() {
        if (!subscription.isUnsubscribed()) {
            subscription.unsubscribe();
        }
    }
}
```

那么，为什么会需要在这个东西呢？似乎不用这个，也可以完成观察者的绑定。

原因就是我们使用了 Dagger 来进行依赖注入。对于所有的观察者采用注入的方式，而不是 hard code 。

###Dagger 的使用经验
上面提到了，通过 Dagger 来简化代码中的初始化操作，那么效果如何呢？

在这个项目的划分中，我们将其分为了这些模块：
```
├── dagger
│   ├── PerActivity.java
│   ├── about
│   │   ├── AboutComponent.java
│   │   └── AboutModule.java
│   ├── account
│   │   ├── AccountComponent.java
│   │   └── AccountModule.java
│   ├── common
│   │   ├── CommonComponent.java
│   │   └── CommonModule.java
│   ├── component
│   │   ├── ActivityComponent.java
│   │   └── ApplicationComponent.java
│   ├── friend
│   │   ├── FriendComponent.java
│   │   └── FriendModule.java
│   ├── law
│   │   ├── LawComponent.java
│   │   └── LawModule.java
│   ├── module
│   │   ├── ActivityModule.java
│   │   └── ApplicationModule.java
│   ├── news
│   │   ├── NewsComponent.java
│   │   └── NewsModule.java
│   ├── order
│   │   ├── OrderComponent.java
│   │   └── OrderModule.java
│   └── task
│       ├── TaskComponent.java
│       └── TaskModule.java
```

在每个模块中，我们给这些模块分配了不同的 UseCase:
```
@Module
public class AccountModule {

    @Provides
    @PerActivity
    @Named("login")
    public UseCase provideLoginUserCase(LoginUserCase userCase) {
        return userCase;
    }

    @Provides
    @PerActivity
    @Named("newtoken")
    public UseCase provideRefreshTokenKeyUseCase(RefreshTokenKeyUseCase useCase) {
        return useCase;
    }

    @Provides
    @PerActivity
    @Named("register")
    public UseCase provideRegisterUseCase(RegisterUseCase useCase) {
        return useCase;
    }

    @Provides
    @PerActivity
    @Named("validatesms")
    public UseCase provideValidateSMS(SMSSendingUseCase useCase) {
        return useCase;
    }
}
```

这样的一个好处，就是在 Presenter 中，我们在实现某一个功能的时候，代码不再是晦涩难懂或者乱七八糟的杂糅过多。可以如此的简单：
```

@PerActivity
public class LoginPresenter extends ABasePresenter implements ILoginPresenter {

    private ILoginActivity         iLoginActivity;
    private LoginUserCase          login;
    private RefreshTokenKeyUseCase refreshTokenKeyUseCase;
    private UseCase                getUserInfo;
    private UploadRidUseCase       uploadRidUseCase;

    @Inject
    public LoginPresenter(@Named("login") UseCase login,
                          @Named("newtoken") UseCase refreshTokenKeyUseCase,
                          @Named("userinfonet") UseCase getUserInfo,
                          @Named("uploadRid") UseCase uploadRid)
    {
        this.login = (LoginUserCase) login;
        this.refreshTokenKeyUseCase = (RefreshTokenKeyUseCase) refreshTokenKeyUseCase;
        this.getUserInfo = getUserInfo;
        this.uploadRidUseCase = (UploadRidUseCase) uploadRid;
    }


    @Override
    public void requestLogin(String name, String psd) {
        getBaseViewController().onProgress();
        validInputs(name, psd);

        this.login.execute(new Subscriber<AccessToken>() {
            @Override
            public void onCompleted() {}

            @Override
            public void onError(Throwable e) {
                e.printStackTrace();
                getBaseViewController().onComplete();
                if (onHandleException(e)) {
                    return;
                }
                iLoginActivity.onPsdError(e.getMessage());
            }

            @Override
            public void onNext(AccessToken login) {
                getUserInfo.execute(new Subscriber<UserInfo>() {
                    @Override
                    public void onCompleted() {}

                    @Override
                    public void onError(Throwable e) {
                        getBaseViewController().onLoginSucess(new UserInfo());
                        getBaseViewController().onComplete();
                        AndroidApplication.getInstance().showToastMessage("欢迎回来~");
                    }

                    @Override
                    public void onNext(UserInfo o) {
                        getBaseViewController().onLoginSucess(o);
                        getBaseViewController().onComplete();
                        AndroidApplication.getInstance().showToastMessage("欢迎~" + o.getPhone());
                    }
                });
            }
        }, name, psd);
    }
}
```

在 Activity 就是这样简单的代码：
```
public class LoginActivity extends BaseActivity implements ILoginActivity {

    @Inject
    LoginPresenter presenter;

    @Override
    protected void initOnCreate() {
        AccountComponent accountComponent = DaggerAccountComponent.builder()
                                                    .applicationComponent(getApplicationComponent())
                                                    .activityModule(getActivityModule())
                                                    .accountModule(new AccountModule()).build();
        accountComponent.inject(this);
        presenter.setiLoginActivity(this);
    }

    @Override
    protected void initCusView(View view) {
        ButterKnife.bind(this, view);
    }


    @Override
    public void onLoginSucessPre() {
        Toast.makeText(this, "登录成功！", Toast.LENGTH_LONG).show();
    }

    @Override
    public void onLoginSucess(UserInfo userInfo) {
        try {
            DataUtils.write2DataFile(userInfo.getHeadimgurl(), "headImg.log");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Constants.USERINFO = userInfo;
        presenter.uploadRid(JPushInterface.getRegistrationID(this));
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }

    @Override
    public void onPsdError(String message) {
        edittextplusPsd.showTooltip(message);
    }

    @Override
    public void onUsernameError(String message) {
        edittextplusUser.showTooltip(message);
    }

    @Override
    public Context getContext() {
        return this;
    }


    @OnClick(R.id.btn_loginnow)
    public void clickLogin() {
        presenter.requestLogin(edittextplusUser.getText(), edittextplusPsd.getText());
    }
}
```

这就是结合了 Dagger 和 RxJava 和 UseCase 编码的好处。非常的清晰。Activity 中着重在 UI 的修改，变化，Presenter 就主要是保证逻辑的正确。RxJava 和 UseCase 则是为了简化代码逻辑。 至于 ButterKnife 就属于锦上添花了。

###至此，结束
感谢 RxJava 和 Dagger 可以让我们从设计上 clean 大部分的工作。

至于其中的 Glide 也好，ButterKnife 也罢，他们带给我们的收益很大程度上是代码级别的，并没有达到一个设计级别。

但是 Dagger 和 RxJava 加上 UseCase 的这一个设计思路，确实是写完这个 APP 最大的一个收获。
