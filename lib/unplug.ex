defmodule Unplug do
  @moduledoc """
  Documentation for `Unplug`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Unplug.hello()
      :world

  """
  import Plug.Conn

  def init(options) do
    # initialize options
    options
  end

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello world")
  end
end
