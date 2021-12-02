defmodule Day01Test do
  @moduledoc """
  TODO ponerle algo bien
  """
  use ExUnit.Case
  doctest Day01
  alias Day01

  test "Validate how many measurements are larger than the previous measurement in a given list" do
    #diseño de nuestra prueba.

    # Datos de entrada (los que obtengamos del archivo)
    measurements_of_depth = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
    expected_times_that_a_depth_measurement_increases = 7

    # Precondiciones (que el archivo exista, que se lee correctamente y segenera una lista)

    # La prueba (que vamos a diseñar)
    # 1. llamar la funcion counter con los datos de entrada
    times_increased_depth = Day01.counter_times_that_a_depth_measurement_increases()

    # Criterios de aceptación
    # Verificar que el total es igual a 7
    assert expected_times_that_a_depth_measurement_increases == times_increased_depth
  end

end
