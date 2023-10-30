defmodule ElixirChatAppWeb.HangoutChannel do
  use ElixirChatAppWeb, :channel

## Task 5: Update the Hangout Channel: join
  @impl true
  def join("hangout:lobby", _payload, socket) do
###    if authorized?(payload) do
###      {:ok, socket}
###    else
###      {:error, %{reason: "unauthorized"}}
###    end
 {:noreply, socket}


  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  @impl true
  def handle_in("ping", payload, socket) do
    {:reply, {:ok, payload}, socket}
  end


  ## Task 6: Update the Hangout Channel: handle_in
  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (hangout:lobby).
  @impl true
  def handle_in("shout", payload, socket) do

  end

  ## Task 7: Update the Hangout Channel: handle_info
  @impl true
  def handle_info(:after_join, socket) do
    ## Get the chat messages from the repository
    ## show existing messages when someone joins

    {:noreply, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(_payload) do
    true
  end


end
