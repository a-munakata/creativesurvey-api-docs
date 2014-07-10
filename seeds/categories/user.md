---

name: user
title: auth_tokenについて

---

auth_tokenを発行し、APIの認証を得ます。ここで得られるauth_tokenはAPIの全ての操作で必要になりますので、APIを使用する前に[認証](#user_create)を確認し、auth_tokenを発行してください。
なお、auth_tokenは[認証の失効](#user_delete)をする事で無効にすることが出来ます。

※ メールアドレスに特殊な文字列が含まれる際、パラメータとしてそのまま渡すと認証に失敗する可能性があります。
メールアドレス、パスワードが正しいにも関わらず認証に失敗する場合は、パラメータをエンコードして再度お試しください。

|メソッド|概要|
|:---|:---|
|create|[POST /api/v1/users/sign_in](#user_create)|
|destroy|[DELETE /api/v1/users/sign_out](#user_delete)|
