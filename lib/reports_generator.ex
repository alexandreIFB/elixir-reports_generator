defmodule ReportsGenerator do
  def build(filename) do
    "reports/#{filename}"
    |> File.stream!()
    |> Enum.reduce(%{}, fn elem, acc ->
      [id, _food_name, price] = parse_line(elem)
      Map.put(acc, id, price)
    end)
  end

  defp parse_line(line) do
    line
    |> String.trim()
    |> String.split(",")
    |> List.update_at(2, &String.to_integer/1)
  end
end
