#! /usr/bin/env elixir

IO.puts("Hello world!")

data = %{
  title: "New title"
}

new_title = "demo zorn"

{:ok, index} = File.read("index.html")
IO.puts(index)

result =
  Regex.replace(
    ~r/(<!-- title: ".*" -->\n\s*<title>)(.*)(<\/title>\n\s*<!-- \/title -->)/,
    index,
    "\\1#{new_title}\\3"
  )

IO.puts(result)
