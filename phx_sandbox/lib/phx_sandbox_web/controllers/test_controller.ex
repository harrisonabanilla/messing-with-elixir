defmodule PhxSandboxWeb.TestController do
  use PhxSandboxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"arg" => arg}) do
    render(conn, "show.html", arg: arg)
  end
end