defmodule MonkeyLanguage.Token do
  @enforce_keys [:type, :literal]
  defstruct [:type, :literal]

  @types %{
    illegal: "ILLEGAL",
    eof: "EOF",

    # Identifiers + literals
    indent: "INDENT",
    int: "INT",
    # Operators
    assign: "=",
    plus: "+",
    # Delimiters
    comma: ",",
    semicolon: ";",

    lparen: "(",
    rparen: ")",
    lbrace: "{",
    rbrace: "}",

    # Keywords
    function: "FUNCTION",
    let: "LET",
  }
end
