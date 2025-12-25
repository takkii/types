defmodule Types do
  def elixir do
    case HTTPoison.get("http://localhost:1337/datas") do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {status, list} = JSON.decode(body)
        IO.puts(list["name"])
        IO.puts(list["title"])
        IO.puts(list["dtcl"])
        IO.puts(list["dtcl_full"])
        IO.puts(list["neovim"])
        IO.puts(list["jetbrain"])
        IO.puts(list["reason"])
        IO.puts(list["settings"])
        IO.puts(list["plugins"])
        IO.puts(list["ides"])
        IO.puts(list["copyright"])
        IO.puts(list["authors"])
        IO.puts(list["youtube"])
        IO.puts(list["under"])
        IO.puts(list["spa"])
        IO.puts(list["spa_full"])
        IO.puts(list["spa_dev"])
        IO.puts(list["spa_js"])
        IO.puts(list["spa_cm"])
        IO.puts(list["github"])
        IO.puts(list["github_pf"])
        IO.puts(list["github_op"])
        IO.puts(list["github_us"])
        IO.puts(list["github_me"])
        IO.puts(list["githubpages"])
        IO.puts(list["githubp_pf"])
        IO.puts(list["githubp_bd"])
        IO.puts(list["githubp_sy"])
        IO.puts(list["githubp_old"])
        IO.puts(list["gist"])
        IO.puts(list["gist_p"])
        IO.puts(list["gist_op"])
        IO.puts(list["gist_sh"])
        IO.puts(list["gist_mix"])

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts("Not found :(")

      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect(reason)
    end
  end
end
