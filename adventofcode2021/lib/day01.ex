defmodule Day01 do
@moduledoc """
  TODO Poner algo bien aqui.
"""

@doc """
  A counter for total times that a got it measurement increased.
"""
  def counter_times_that_a_depth_measurement_increases(measurement, counter \\0)

  # 4. Una vez que se tenga el resultado de la comparación contar cuantos
  # son mayores (respecto al anterior)
  def counter_times_that_a_depth_measurement_increases([], counter) do
    counter
  end

  #3. Recorrer cada elemento de la estrucutura respetando el orden de
  # cada uno para compararlo con respecto a su anterior
  def counter_times_that_a_depth_measurement_increases([h|[h2|_t2] = t], counter) do
    counter = if h2 > h do counter + 1 end
    counter_times_that_a_depth_measurement_increases(t, counter)
  end

  @doc """
    Dado un archivo con las medicoines tomadas, recupera cada una de ellas
    y regresa una lista de cada medición obtenida.
  """
  def get_measurements do
    #1. obtener el conjunto de datos proporcionados

    #2. Colocar los datos en una estructura que nos permita recorrer cada uno
  end

end
