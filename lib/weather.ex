defmodule Weather do
  def by_zip(zip\\34743) do
    api_key = Application.get_env(:weather, :api_key);
    {:ok, status_code, headers, client_ref} = :hackney.get(
      <<"http://api.openweathermap.org/data/2.5/weather?zip=#{zip},us&appid=#{api_key}&units=imperial">>
    )

    {:ok, body} = :hackney.body(client_ref)
    
    temp = Poison.decode!(body) |> Map.get("main") |> Map.get("temp")
    temp
  end
end
