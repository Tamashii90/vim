local ls = require("luasnip")

ls.add_snippets("javascript", {
  ls.parser.parse_snippet("log", "console.log(\"$1\");\n$0"),
  ls.parser.parse_snippet("if", "if ($1) {\n\t$2 \n}\n$0"),
 -- ls.parser.parse_snippet("ifelse", "if ($1) {\n\t$2\n} else {\n\t$3\n}\n$0")
  ls.parser.parse_snippet("ifelse", [[
  if ($1) {
    $2
  } else {
    $3
  }
  $0
    ]])
})

ls.add_snippets("javascriptreact", {
  ls.parser.parse_snippet("useS", [[
  const [$1, set$2] = useState($3);
  $0
  ]]);
})

ls.filetype_extend("typescript", {"javascript"});
ls.filetype_extend("typescriptreact", {"typescriptreact", "javascript", "javascriptreact"});
