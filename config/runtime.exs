import Config

config :hello_exvcr, :api_token, System.fetch_env!("API_TOKEN")
