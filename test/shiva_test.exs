defmodule ShivaTest do
  use ExUnit.Case

  # https://hexdocs.pm/httpoison/HTTPoison.Response.html#content

  test "httpoison response assert status code 200" do
    case HTTPoison.get("http://localhost:1337/datas") do
      {:ok, %HTTPoison.Response{status_code: status_code}} ->
        assert status_code == 200
    end
  end

  test "httpoison response refute status code 404" do
    case HTTPoison.get("http://localhost:1337/datas") do
      {:ok, %HTTPoison.Response{status_code: status_code}} ->
        refute status_code == 404
    end
  end

  test "Assert, httpoison response body" do
    case HTTPoison.get("http://localhost:1337/datas") do
      {:ok, %HTTPoison.Response{body: body}} ->
        assert body ==
                 "{\"name\":\"newworld\",\"title\":\"Welcome to newworld project.\",\"dtcl\":\"2025/11/03、現時点で人気のある私の※1 DTCL動画です。\",\"dtcl_full\":\"※1 略 Developer Test Completed Log\",\"neovim\":\"Neovim環境の構築することを止めました。\",\"jetbrain\":\"→ JetBrains製IDEsに移行のためです。\",\"reason\":\"「理由として挙げられる2点」\",\"configuration\":\"1. 設定ファイルが多く調整が必要なこと。\",\"plugins\":\"2. プラグインの入れ替えや仕様の変更に対応すること。\",\"ides\":\"※ IDEsを使いましょう、時間が大事です。\",\"copyright\":\"Copyright &copy; 2025 Takayuki Kamiyama.\",\"authors\":\"Copyright 2025 Takayuki Kamiyama.\",\"youtube\":\".netfileの構成、neovim/goneovim動作状況\",\"under\":\"タイトル(上部)\",\"spa\":\"Single Page Application\",\"spa_full\":\"SPA, Single Page Application.\",\"spa_dev\":\"今回、単一のWebページでアプリケーションを構成する開発手法を用います。\",\"spa_js\":\"JavaScriptを使って、快適なユーザー体験（UX）の実現を目的にしています。\",\"spa_cm\":\"※ 説明文は、わかりやすさのため英文と日本語を混在させています。\",\"github\":\"GitHub/takkii\",\"github_pf\":\"OSS活動のポートフォリオです。\",\"github_op\":\"公開するプロジェクトをまとめました。\",\"github_us\":\"何年も使っているので、プロジェクト内の挙動はほぼ正確になっています。\",\"github_me\":\"思い出の詰まったプロジェクトも多々あります。\",\"githubpages\":\"Piece of Ruby Shop\",\"githubp_pf\":\"自己紹介や経歴などを紹介するページです。\",\"githubp_bd\":\"jekyllを利用し、Dockerでビルドしています。\",\"githubp_sy\":\"スタイルシートやフォルダ構成などは自動で形成されます。\",\"githubp_old\":\"フリーランス時代に作成したページでなんだか懐古感を想います。\",\"gist\":\"Gist Page\",\"gist_p\":\"Gistページです。\",\"gist_op\":\"公開したプロジェクトのアナウンスや記事をまとめています。\",\"gist_sh\":\"以下省略が多いですが、形にすることで雰囲気を楽しめるようにしています。\",\"gist_mix\":\"記事やアナウンスの整理整頓をしました。少数で管理しています。\"}"
    end
  end

  test "Assert, httpoison response request_url" do
    case HTTPoison.get("http://localhost:1337/datas") do
      {:ok, %HTTPoison.Response{request_url: request_url}} ->
        assert request_url == "http://localhost:1337/datas"
    end
  end
end
