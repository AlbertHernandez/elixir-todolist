defmodule TodolistWeb.Api.V1.StatusController do
  use TodolistWeb, :controller

  @spec index(Plug.Conn.t(), map) :: Plug.Conn.t()
  def index(conn, _params) do
    render(conn, "index.json")
  end
end
