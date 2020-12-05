defmodule TodolistWeb.Api.V1.TodoView do
  use TodolistWeb, :view
  alias TodolistWeb.Helpers

  @spec render(String.t(), map) :: map
  def render("index.json", _params) do
    [
      %{
        id: "aaa",
        title: "aaa",
        description: "aaa",
      },
      %{
        id: "bbb",
        title: "bbb",
        description: "bbb",
      }
    ]
  end

  @spec render(String.t(), map) :: map
  def render("show.json", %{todo: todo}) do
    %{
      id: todo.id,
      title: todo.title,
      description: todo.description,
    }
  end

  @spec render(String.t(), map) :: map
  def render("create.json", %{todo: todo}) do
    %{
      id: Helpers.generate_id,
      title: todo.title,
      description: todo.description,
    }
  end
end
