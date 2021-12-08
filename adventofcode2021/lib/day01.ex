defmodule Day01 do
  @moduledoc false

  @doc """
    Gets the depth measurements from a file and returns tue number of times
    that a depth of measurement increases compared to the previous.
  """
  def part1(path) do
    path
    |> get_measurements()
    |> counter_times_that_a_depth_measurement_increases()
  end

  @doc """
    A counter for total times that a got it measurement increased.
  """
  def counter_times_that_a_depth_measurement_increases(measurements, counter \\ 0)
  def counter_times_that_a_depth_measurement_increases([_h], counter), do: counter
  def counter_times_that_a_depth_measurement_increases([h | [h2 | _t2] = t], counter)
      when not is_nil(h2) and h2 > h,
      do: counter_times_that_a_depth_measurement_increases(t, counter + 1)
  def counter_times_that_a_depth_measurement_increases([h | [h2 | _t2] = t], counter)
      when is_nil(h2) or h2 < h,
      do: counter_times_that_a_depth_measurement_increases(t, counter)

  @doc """
    Dado un archivo con las mediciones tomadas, recupera cada una de ellas
    y regresa una lista de cada medición obtenida.
  """
  def get_measurements(path) do
    path
      |> File.stream!()
      |> Enum.map(fn line ->
        line
        |> String.trim()
        |> String.to_integer()
      end)
  end
end
