```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.reduce
result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    # Handle the condition without terminating
    IO.puts("Encountered 3, continuing...")
    acc
  else
    [x | acc]
  end
end)
IO.inspect(Enum.reverse(result))

# Solution 2: Using try-catch
try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three_encountered)
    end
    IO.puts(x)
  end)
catch
  :three_encountered -> IO.puts("Encountered 3, handled exception")
end
```