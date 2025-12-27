defmodule Shiva do
  def elixir do
    case HTTPoison.get("http://localhost:1337/datas") do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {status, json} = JSON.decode(body)

        Enum.each(
          [
            json["name"],
            json["title"],
            json["dtcl"],
            json["dtcl_full"],
            json["neovim"],
            json["jetbrain"],
            json["reason"],
            json["settings"],
            json["plugins"],
            json["ides"],
            json["copyright"],
            json["authors"],
            json["youtube"],
            json["under"],
            json["spa"],
            json["spa_full"],
            json["spa_dev"],
            json["spa_js"],
            json["spa_cm"],
            json["github"],
            json["github_pf"],
            json["github_op"],
            json["github_us"],
            json["github_me"],
            json["githubpages"],
            json["githubp_pf"],
            json["githubp_bd"],
            json["githubp_sy"],
            json["githubp_old"],
            json["gist"],
            json["gist_p"],
            json["gist_op"],
            json["gist_sh"],
            json["gist_mix"]
          ],
          fn x -> IO.puts(x) end
        )

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts("Not found :(")

      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect(reason)
    end
  end
end
