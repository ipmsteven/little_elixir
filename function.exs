#Functions-1

list_concat = fn a, b -> a ++ b end
sum = fn a, b, c -> a + b + c end
# https://forums.pragprog.com/forums/322/topics/11917
pair_tuple_to_list = fn {a, b} -> [a, b] end

list_concat.([:a, :b], [:c, :d])
IO.puts sum.(1, 2, 3)
IO.puts pair_tuple_to_list.({123456, 678901})

handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  { _, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("LICENSE"))
IO.puts handle_open.(File.open("nonexist"))

#Functions-2

fizz_word = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, n -> n
end

fizz_word.(0, 0, 1)
#"FizzBuzz"

fizz_word.(0, 1, 1)
#"Fizz"

fizz_word.(1, 0, 1)
#"Buzz"

fizz_word.(1, 1, 1)
#1

prefix = fn prefix ->
    fn s ->
      "#{prefix} #{s}"
    end
end

mr = prefix.("Mr")
IO.puts mr.("Liu")

Enum.map  [1,2,3,4], &(&1 + 2)
Enum.each [1,2,3,4], &IO.inspect/1
