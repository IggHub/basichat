defmodule Basichat.RoomChannel do
  use Phoenix.Channel

  def join("rooms:lobby", _params, socket) do
    {:ok, socket}
  end

  def join(_room, _params, _socket) do
    {:error, %{reason: "only lobby is available"}}
  end

  def handle_in("new_message", param, socket) do
    broadcast! socket, "new_message", param
    {:noreply, socket}
  end
end
