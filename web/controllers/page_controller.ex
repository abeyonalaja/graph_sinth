defmodule GraphSinth.PageController do
  use GraphSinth.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
