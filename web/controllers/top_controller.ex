defmodule DarkmatterElixir.TopController do
  use DarkmatterElixir.Web, :controller
  alias DarkmatterElixir.Repo
  alias DarkmatterElixir.Information

  def index(conn, _params) do
    {{y, m, d}, {h, min, s}} = :calendar.local_time

    now = "#{y}-#{m}-#{d} #{h}:#{min}:#{s}"
    case Repo |> Ecto.Adapters.SQL.query("select * from informations where (start_at is null and end_at is null) or (start_at <= ?) or (end_at >= ?)", [now, now]) do
       {:ok, result} -> info = to_column_map(result.columns, result.rows)
       {:error, e} -> info = []
    end

    conn
    |> assign(:infos, info)
    |> render("index.html")
  end

  def to_column_map(columns, rows) do
    Enum.map(rows, fn row -> Enum.into(List.zip([columns, row]), %{}) end)
  end

end
