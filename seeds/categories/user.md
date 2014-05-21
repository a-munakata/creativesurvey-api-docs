---

name: user
title: ユーザー認証

---

ユーザーの認証や、認証の失効を行います。ここで得られるauth_tokenはAPIの全ての操作で必要になりますので、APIを使用する前に[認証](#user_create)を確認し、auth_tokenを発行してください。
なお、auth_tokenは[認証の失効](#user_delete)をしない限り有効です。