defmodule LiveDivPoof.Repo do
  use Ecto.Repo,
    otp_app: :live_div_poof,
    adapter: Ecto.Adapters.Postgres
end
