defmodule GuessingGame do
  # guess between min and max -> guess middle number
  # tell user guess
  # "yes" -> end game
  # "bigger" bigger(lwo, high)
  # "smaller" -> smaller(low, high)
  # anything else -> invalid response

  def guess(low, high) do
    response = IO.gets "are you thinking of #{mid(low, high)}?\n"
    case String.trim response do
      "bigger" -> bigger(low, high)
      "smaller" -> smaller(low, high)
      "yes" -> "nice..."
      _ ->
        IO.puts "enter bigger, smaller or yes okie\n"
        guess(low, high)
    end
  end

  def mid(low, high) do
    div(low + high, 2)
  end

  def bigger(low, high) do
    new_low = min(high, mid(low, high) + 1)
    guess(new_low, high)
  end

  def smaller(low, high) do
    new_high = max(low, mid(low, high) - 1)
    guess(low, new_high)
  end
end