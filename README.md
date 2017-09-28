# ElixirWeather

given a zip code, retrieves temperature

```
iex(1)> Weather.by_zip(34743)
77.67
```

API key is set in config.exs
```
config :weather, api_key: 'YOUR API KEY'
```

<p>using the API as https://github.com/j-peso/WeatherXML but consuming JSON</p>
<p>API key generated at openweathermap.org</p>
