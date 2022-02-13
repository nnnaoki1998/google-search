# google-search

## Gemfileのライブラリをインストール
```
$ bundle install
```

## Custom Search JSON APIの使用に必要なkeyを設定
1. jsonファイルのサンプルをコピー
    ```
    $ cp /app/resources/google-api-customsearch.json-sample /app/resources/google-api-customsearch.json
    ```
1. google-api-customsearch.jsonにAPIキー, サーチエンジンIDを設定

## 起動
```
$ rails server
```

## 使用手順
1. 起動
1. [http://127.0.0.1:3000/](http://127.0.0.1:3000/)にアクセス
1. 入力フォームに検索するキーワードを入力し検索ボタンをクリック

## 使用例
![search-reqult](https://user-images.githubusercontent.com/55642144/153780445-0136b462-a6f0-44c0-a175-e4fc64c22432.png)
