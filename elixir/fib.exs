defmodule FIB do 
  def fac(0), do: 1
  def fac(x) when x > 0 do
    x * fac(x - 1)
  end

  def fib(0), do: 0 
  def fib(1), do: 1 
  def fib(x) when x > 1 do
    fib(x-1) + fib(x-2)
  end 


end



defmodule Counter do 
  def loop(acc) do
    receive do
      :stop -> acc
      :increment -> loop(acc + 1)
      :decrement -> loop(acc - 1)
      {:peek, response_pid} ->
        response_pid <- {:peek_value, acc }
        loop(acc)
    end
  end
end
