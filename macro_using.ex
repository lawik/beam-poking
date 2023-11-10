defmodule MacroSample do
  use MacroUsable, choice: :fish
end

defmodule MacroUsable do
  defmacro __using__(opts) do
    quote do
      def unquote(opts[:fish]) do
        to_string(unquote(opts[:fish]))
      end
    end
  end
end
