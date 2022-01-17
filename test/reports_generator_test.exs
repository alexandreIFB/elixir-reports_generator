defmodule ReportsGeneratorTest do
  use ExUnit.Case

  describe "build/1" do
    test "builds the report" do
      file_name = "report_test.csv"

      reponse = ReportsGenerator.build(file_name)

      expected_response = "banana"

      assert reponse == expected_response
    end
  end
end
