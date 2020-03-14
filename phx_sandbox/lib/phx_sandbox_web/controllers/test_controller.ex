defmodule PhxSandboxWeb.TestController do
  use PhxSandboxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end