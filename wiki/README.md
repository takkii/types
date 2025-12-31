### Shivaの使い方

※ 母国語(日本語)で書きます。英語などは、各自環境でお願いします。

```markdown
# npmからtypes-serverをインストールする
npm install -g types-server

# types-serverを起動後、別ウインドウを開く
types 1337

# Rubygems/sheltered-girlをインストールする
heat branch overdrive takkii overdrive main

# overdriveに移動する
cd overdrive && yarn install

# overdrive/jsonで実行する
cd json && node toss.js

# 上階層に移動する
cd .. && cd ..

# 依存解消する
mix deps.get

# ① Windows Terminalで実行する
mix run -e 'Shiva.elixir'

# ② JetBrains/Elixirプラグインで使用する
iex -S mix

> Shiva.elixir

※ ①と②は場合により、どちらでもよい。

# ② 終了は、Ctrl+C を2回押す。
```

### 出力結果 (上部からインタラクティブシェル、下部はコマンドライン)

```elixir
Interactive Elixir (1.19.4) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Shiva.elixir
overdrive
Welcome to overdrive project.
2025/11/03、現時点で人気のある私の※1 DTCL動画です。
※1 略 Developer Test Completed Log
Neovim環境の構築することを止めました。
→ JetBrains製IDEsに移行のためです。
「理由として挙げられる2点」
1. 設定ファイルが多く調整が必要なこと。
2. プラグインの入れ替えや仕様の変更に対応すること。
※ IDEsを使いましょう、時間が大事です。
Copyright &copy; 2025 Takayuki Kamiyama.
Copyright 2025 Takayuki Kamiyama.
.netfileの構成、neovim/goneovim動作状況
タイトル(上部)
Single Page Application
SPA, Single Page Application.
今回、単一のWebページでアプリケーションを構成する開発手法を用います。
JavaScriptを使って、快適なユーザー体験（UX）の実現を目的にしています。
※ 説明文は、わかりやすさのため英文と日本語を混在させています。
GitHub/takkii
OSS活動のポートフォリオです。
公開するプロジェクトをまとめました。
何年も使っているので、プロジェクト内の挙動はほぼ正確になっています。
思い出の詰まったプロジェクトも多々あります。
Piece of Ruby Shop
自己紹介や経歴などを紹介するページです。
jekyllを利用し、Dockerでビルドしています。
スタイルシートやフォルダ構成などは自動で形成されます。
フリーランス時代に作成したページでなんだか懐古感を想います。
Gist Page
Gistページです。
公開したプロジェクトのアナウンスや記事をまとめています。
以下省略が多いですが、形にすることで雰囲気を楽しめるようにしています。
記事やアナウンスの整理整頓をしました。少数で管理しています。
:ok
iex(2)>
```

```elixir
mix run -e 'Shiva.elixir'
    warning: variable "status" is unused (if the variable is not meant to be used, prefix it with an underscore)
    │
  5 │         {status, json} = JSON.decode(body)
    │          ~
    │
    └─ lib/shiva.ex:5:10: Shiva.elixir/0

overdrive
Welcome to overdrive project.
2025/11/03、現時点で人気のある私の※1 DTCL動画です。
※1 略 Developer Test Completed Log
Neovim環境の構築することを止めました。
→ JetBrains製IDEsに移行のためです。
「理由として挙げられる2点」
1. 設定ファイルが多く調整が必要なこと。
2. プラグインの入れ替えや仕様の変更に対応すること。
※ IDEsを使いましょう、時間が大事です。
Copyright &copy; 2025 Takayuki Kamiyama.
Copyright 2025 Takayuki Kamiyama.
.netfileの構成、neovim/goneovim動作状況
タイトル(上部)
Single Page Application
SPA, Single Page Application.
今回、単一のWebページでアプリケーションを構成する開発手法を用います。
JavaScriptを使って、快適なユーザー体験（UX）の実現を目的にしています。
※ 説明文は、わかりやすさのため英文と日本語を混在させています。
GitHub/takkii
OSS活動のポートフォリオです。
公開するプロジェクトをまとめました。
何年も使っているので、プロジェクト内の挙動はほぼ正確になっています。
思い出の詰まったプロジェクトも多々あります。
Piece of Ruby Shop
自己紹介や経歴などを紹介するページです。
jekyllを利用し、Dockerでビルドしています。
スタイルシートやフォルダ構成などは自動で形成されます。
フリーランス時代に作成したページでなんだか懐古感を想います。
Gist Page
Gistページです。
公開したプロジェクトのアナウンスや記事をまとめています。
以下省略が多いですが、形にすることで雰囲気を楽しめるようにしています。
記事やアナウンスの整理整頓をしました。少数で管理しています。
```

### 2つのプロジェクト

```markdown
「Darkness_Randa, Knight_Baron」

今後、実装予定です。
```

_※ Elixir、JSONライブラリを利用して出力しました。phoenixで使うための前処理です。_
