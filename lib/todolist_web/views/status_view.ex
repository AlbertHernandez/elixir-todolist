defmodule TodolistWeb.StatusView do
  use TodolistWeb, :view

  @spec render(String.t(), map) :: map
  def render("index.json", _params) do
    %{success: true}
  end
end
