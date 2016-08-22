defmodule DarkmatterElixir.TopController do
  use DarkmatterElixir.Web, :controller
  alias DarkmatterElixir.Repo
  alias DarkmatterElixir.Information

  def index(conn, _params) do
    informations = Repo.all(Information)

    conn
    |> assign(:infos, informations)
    |> render("index.html")
  end
end
