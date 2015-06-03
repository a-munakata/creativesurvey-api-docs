# CREATIVE SURVEY API DOCUMENTATION

クリエイティブサーベイのAPIは、ユーザーがメールアドレスとパスワードを入力、auth_tokenを発行するだけで誰でも使えるようになっています。ユーザーはAPIドキュメンテーションを見て、必要な操作を行います。新旧バージョンでAPIが違うので、ドキュメンテーションもそれぞれ用意されています。

・新バージョン(sakura)
https://edge.creativesurvey.com/api/v1/docs

・旧バージョン(tonari)
https://creativesurvey.com/api/v1/docs

新バージョンはsakura, 旧バージョンはtonariと言うブランチで管理されています。ドキュメンテーションに関わるソースはマークダウンのファイルで管理されています。

## Setting

```
$ bundle install
```

## 静的ファイルの生成

このアプリケーションを起動し、ルートにアクセスします。
Export HTMLと言うボタンをクリックすると、`public/source`以下に静的ファイルが生成されます。


## assetsの変更
javascript, stylesheetの変更を行った場合、下記のコマンドでsource以下のファイルがアップデートされます。
ファイルはそれぞれ以下に生成されます。

- public/source/javascripts
- public/source/stylesheets


```
$ bundle exec rake assets:update
```


## Test

下記コマンドでテストファイルを出力します。

```
$ bundle exec rake test:export
```

