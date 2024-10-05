import Config

# https://github.com/parroty/exvcr/blob/v0.15.2/lib/exvcr/config_loader.ex
config :exvcr,
  vcr_cassette_library_dir: "test/fixture/vcr_cassettes",
  custom_cassette_library_dir: "test/fixture/custom_cassettes",
  filter_sensitive_data: [
    [pattern: System.fetch_env!("API_TOKEN"), placeholder: "<API_TOKEN>"],
    [pattern: "true|false", placeholder: "<SECRET_FLAG>"]
  ],
  filter_request_headers: [
    "accept-encoding",
    "user-agent"
  ],
  filter_request_options: [],
  response_headers_blacklist: [
    "age",
    "cf-cache-status",
    "cf-ray",
    "date",
    "etag",
    "report-to",
    "reporting-endpoints",
    "nel",
    "server",
    "x-content-type-options",
    "x-powered-by"
  ],
  ignore_localhost: true
