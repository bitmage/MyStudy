.class public final Lcom/google/android/gms/games/b;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/games/Game;


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/b;->q()Lcom/google/android/gms/games/Game;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "external_game_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "primary_category"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "secondary_category"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "game_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "developer_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    const-string v0, "game_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;)I

    move-result v0

    return v0
.end method

.method public i()Landroid/net/Uri;
    .locals 1

    const-string v0, "game_hi_res_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/net/Uri;
    .locals 1

    const-string v0, "featured_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    const-string v0, "play_enabled_game"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    const-string v0, "installed"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->b(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "package_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    const-string v0, "gameplay_acl_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    const-string v0, "achievement_total_count"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    const-string v0, "leaderboard_count"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public q()Lcom/google/android/gms/games/Game;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->b(Lcom/google/android/gms/games/Game;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/b;->q()Lcom/google/android/gms/games/Game;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
