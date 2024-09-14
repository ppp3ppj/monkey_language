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

  def new(type: type, literal: literal) when is_atom(type) and is_binary(literal) do
    if Map.has_key?(@types, type) do
      %__MODULE__{type: type, literal: literal}
    else
      raise "Token with type #{inspect(type)} is not defined"
    end
  end

  def lookup_ident(ident) do
    Map.get(@keywords, ident, :ident)
  end
end
