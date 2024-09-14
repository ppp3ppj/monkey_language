defmodule MonkeyLangLexerTest do
  use ExUnit.Case
  alias MonkeyLanguage.Token

 test "converts a string into a list of tokens" do
    input = "=+(){},;"

    expected = [
      %Token{type: :assign, literal: "="},
      %Token{type: :plus, literal: "+"},
      %Token{type: :lparen, literal: "("},
      %Token{type: :rparen, literal: ")"},
      %Token{type: :lbrace, literal: "{"},
      %Token{type: :rbrace, literal: "}"},
      %Token{type: :comma, literal: ","},
      %Token{type: :semicolon, literal: ";"},
      %Token{type: :eof, literal: ""}
    ]

    tokens = MonkeyLanguage.Lexer.tokenize(input)

    assert length(tokens) == length(expected)

    Enum.zip(expected, tokens)
    |> Enum.each(&assert elem(&1, 0) == elem(&1, 1))
  end

end
