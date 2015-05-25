defmodule MyList do
  def flatten([]), do: []

  def flatten([head | tail]) do
    flatten(head) ++ flatten(tail)
  end

  def flatten(head), do: [head]


  def sum([]), do: 0

  def sum([head | tail]) do
    sum(head) + sum(tail)
  end

  def sum(head), do: head
end

