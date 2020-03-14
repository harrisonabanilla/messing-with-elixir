defmodule PhxSandbox.Repo do
  use Ecto.Repo,
    otp_app: :phx_sandbox,
    adapter: Ecto.Adapters.Postgres
end
