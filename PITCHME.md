## Elmハンズオン @ 宮崎

2019-07-26

---

## Elmってどんな言語？

- 純粋関数型
- JavaScript + HTML にコンパイルされる
- 言語内フレームワーク(The Elm Architecture)
- 実行時エラーが発生しない

---


## つまり？

安全で関数型が学べててげ楽しい！

---

## 時間割

- 準備＆座学 (20min) ←イマココ！
- 課題1 (30min)
- 質問 ＆ 休憩 (10min)
- 課題2 (50min)
- 振り返り (10min)

懇親会は特に予定してないけど行きたい人がいれば。

---

## 感謝

場所の提供ありがとうございます！！！

---

## 準備

- Homebrew使える人 : `brew install elm elm-format`
- npm使える人 : `npm i -g elm elm-format`
- 公式サイトにはMac, Win用インストーラーもあります
    - https://guide.elm-lang.org/install.html
- オンラインで試す
    - 公式 : https://elm-lang.org/try
    - Ellie : https://ellie-app.com (推奨)

+++

## ソースコード

https://github.com/mather/elm-handson

- ローカルで試す方は `git clone` しましょう
- オンラインエディタで試す方はブラウザで開いてソースコードを随時コピーします

+++

## ローカルで試す

```
$ cd ex1-countup/
$ elm reactor
Go to <http://localhost:8000> to see your project dashboard.
```

http://localhost:8000 へアクセスして `countup.elm` を選択する

`elm reactor` が変更を検知して自動リコンパイルするので、ファイルを保存してブラウザをリロードすればOK

+++

## オンラインエディタで試す

`ex1-countup/countup.elm` の内容をコピーして貼り付ける

自動コンパイルしてくれる

---

## The Elm Architecture

アプリケーションのライフライクルの定義

- `init` : 初期状態
- `view` : ある状態をHTMLで表現する
- `update` : アクションに対応して状態を次の状態に変更する

+++

## ライフサイクルのイメージ

![ライフライクル](img/ElmAppFlow.png)

---

## 課題1

ボタンを押すとカウントアップするアプリケーション
