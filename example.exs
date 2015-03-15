
defmodule HelloModule do
  def hello(name \\ "World") do
    IO.puts "Hello " <> String.capitalize name
  end
end

HelloModule.hello
#=> "Hello World"

HelloModule.hello "julius"
#=> "Hello Julius"



defmodule Fib do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n) do fib(n-1) + fib(n-2) end
end
 
IO.puts Fib.fib(10) 
#>= 55


defmodule HelloModule.Utils do
  def util do
    IO.puts name
  end

  defp name do
    "Utilize"
  end
end

HelloModule.Utils.util
#=> "Utilize"

HelloModule.Utils.name
#=> ** (UndefinedFunctionError) undefined function: HelloModule.Utils.name/0
