初识NodeJS
---

初识NodeJS,印象最深的莫过于他的事件机制,和回调函数,他的读取文件的代码段如下:
```
var fs = require('fs');
fs.readFile('file.txt', 'utf-8', function(err, data) {
    if(err) console.error(...);
    else console.log(...);
});
console.log(...);
```
这边好玩的是,他的代码并不是顺序执行的,代码中的function,并不是在readFile之后立刻执行,而是会先执行console.log(...)等到文件准备好之后,系统会触发一个文件准备好的事件,然后自动调用注册的回调函数进行执行.这一点很不同于Java中经典的BIO,代码会阻塞在Read上.

###单线程事件驱动异步模型
这不得不说下NodeJS的单线程事件驱动的编程方式了.在旧版的NodeJS中并没有多线程的概念,一个程序都基于一个线程.从而减少多线程上下文切换带来的开销.但这会带来一个好玩的问题,比如,会写出反人类的,不可维护的代码.如一个简单的在数据库中删除数据,插入数据查询数据,更新数据这样一个串行的操作,会带来这样一段蛋疼的代码:
```
var mysql = require('mysql');
var conn = mysql.createConnection({
    host: 'localhost',
    user: 'nodejs',
    password: 'nodejs',
    database: 'nodejs',
    port: 3306
});
conn.connect();

var insertSQL = 'insert into t_user(name) values("conan"),("fens.me")';
var selectSQL = 'select * from t_user limit 10';
var deleteSQL = 'delete from t_user';
var updateSQL = 'update t_user set name="conan update"  where name="conan"';

//delete
conn.query(deleteSQL, function (err0, res0) {
    if (err0) console.log(err0);
    console.log("DELETE Return ==> ");
    console.log(res0);

    //insert
    conn.query(insertSQL, function (err1, res1) {
        if (err1) console.log(err1);
        console.log("INSERT Return ==> ");
        console.log(res1);

        //query
        conn.query(selectSQL, function (err2, rows) {
            if (err2) console.log(err2);

            console.log("SELECT ==> ");
            for (var i in rows) {
                console.log(rows[i]);
            }

            //update
            conn.query(updateSQL, function (err3, res3) {
                if (err3) console.log(err3);
                console.log("UPDATE Return ==> ");
                console.log(res3);

                //query
                conn.query(selectSQL, function (err4, rows2) {
                    if (err4) console.log(err4);

                    console.log("SELECT ==> ");
                    for (var i in rows2) {
                        console.log(rows2[i]);
                    }
                });
            });
        });
    });
});
```
这不得不说是一个反社会的代码,虽然现在有改善这一情况的开源库,但还是麻烦,所以NodeJS在我眼里,最应该出现的地方因该是要求高并发,低复杂度业务逻辑的案例,比如说消息服务器.

但是,对于这么一个好玩的模型,我决定用Java实现,换一种思路写代码.