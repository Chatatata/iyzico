defmodule Iyzico.CompileTime do
  @doc false
  defmacro static_assert_binary(param, opts \\ nil) do
    quote do
      unless is_binary(unquote(param)) do
        raise Iyzico.InvalidConfigurationError
      end
    end
  end
end