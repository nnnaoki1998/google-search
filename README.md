# google-search

## Gemfileのライブラリをインストール
```
$ bundle install
```

## Custom Search JSON APIの使用に必要なkeyを設定
1. jsonファイルのサンプルをコピー
  ```
  cp /app/resources/google-api-customsearch.json-sample /app/resources/google-api-customsearch.json
  ```
1. google-api-customsearch.jsonにAPIキー, サーチエンジンIDを設定

## 起動
```
$ rails server
```

## 使用手順
1. 起動
1. http://127.0.0.1:3000/にアクセス
1. 入力フォームに検索するキーワードを入力し検索ボタンをクリック

## 使用例
![search-reqult](assets/images/search-result.png)
