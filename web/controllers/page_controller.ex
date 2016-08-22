defmodule DarkmatterElixir.PageController do
  use DarkmatterElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
