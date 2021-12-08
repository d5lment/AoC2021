defmodule Day01Test do
  @moduledoc """
  TODO ponerle algo bien
  """
  use ExUnit.Case
  doctest Day01
  alias Day01

  test "How many measurements are larger than the previous measurement getting inputs from a file" do
    path = "/Users/d5lment/workspace/D5lmentsDojo/AoC2021/adventofcode2021/lib/resources/day01/sample_01.txt"
    expected_total_increments = 7

    total_increments = Day01.part1(path)

    assert expected_total_increments == total_increments
  end

  test "Validate how many measurements are larger than the previous measurement in a given list" do
    # diseño de nuestra prueba.

    # Datos de entrada (los que obtengamos del archivo)
    measurements_of_depth = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
    expected_times_that_a_depth_measurement_increases = 7

    # La prueba (que vamos a diseñar)
    # 1. llamar la funcion counter con los datos de entrada
    times_increased_depth =
      Day01.counter_times_that_a_depth_measurement_increases(measurements_of_depth)

    # Criterios de aceptación
    # Verificar que el total es igual a 7
    assert expected_times_that_a_depth_measurement_increases == times_increased_depth
  end

  test "Getting measurements from file" do
    # Precondiciones (que el archivo exista, que se lee correctamente y segenera una lista con lso datos)
    expected_measurements = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]

    path = "/Users/d5lment/workspace/D5lmentsDojo/AoC2021/adventofcode2021/lib/resources/day01/sample_01.txt"
    measurements = Day01.get_measurements(path)

    assert expected_measurements == measurements
  end
end
