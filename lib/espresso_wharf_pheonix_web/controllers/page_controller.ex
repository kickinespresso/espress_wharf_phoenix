defmodule EspressoWharfPheonixWeb.PageController do
  use EspressoWharfPheonixWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
