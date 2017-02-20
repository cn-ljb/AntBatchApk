.class public Lcom/ljb/demo/antpacksimple/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final CHANNEL_DEFAULT:Ljava/lang/String; = "default"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getChannel()Ljava/lang/String;
    .locals 8

    .prologue
    .line 23
    const-string v1, "default"

    .line 25
    .local v1, "channel":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/ljb/demo/antpacksimple/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "channel/channel"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 26
    .local v4, "in":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 27
    .local v5, "length":I
    new-array v0, v5, [B

    .line 28
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 29
    new-instance v2, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v2, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "channel":Ljava/lang/String;
    .local v2, "channel":Ljava/lang/String;
    move-object v1, v2

    .line 33
    .end local v0    # "buffer":[B
    .end local v2    # "channel":Ljava/lang/String;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "length":I
    .restart local v1    # "channel":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 30
    :catch_0
    move-exception v3

    .line 31
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v1, 0x7f04001a

    invoke-virtual {p0, v1}, Lcom/ljb/demo/antpacksimple/MainActivity;->setContentView(I)V

    .line 18
    const v1, 0x7f0b0055

    invoke-virtual {p0, v1}, Lcom/ljb/demo/antpacksimple/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    .local v0, "tv_channel":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/ljb/demo/antpacksimple/MainActivity;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method
