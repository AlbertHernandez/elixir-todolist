defmodule TodolistWeb.Api.V1.TodoController do
  use TodolistWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json")
  end

  def show(conn, %{"id" => id}) do
    todo = %{
      id: id,
      title: "advent of code",
      description: "prepare for the advent of code"
    }

    render(conn, "show.json", todo: todo)
  end

  def create(conn, %{"title" => title, "description" => description}) do
    todo = %{
      title: title,
      description: description
    }

    render(conn, "create.json", todo: todo)
  end

  def update(conn, %{"id" => id, "title" => title, "description" => description }) do
    todo = %{
      id: id,
      title: title,
      description: description
    }

    render(conn, "show.json", todo: todo)
  end

  def delete(conn, %{"id" => id}) do
    send_resp(conn, :no_content, "")
  end
end
