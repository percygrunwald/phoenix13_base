defmodule Phoenix13BaseWeb.PageController do
  use Phoenix13BaseWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
