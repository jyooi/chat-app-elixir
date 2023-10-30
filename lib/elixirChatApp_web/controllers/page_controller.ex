defmodule ElixirChatAppWeb.PageController do
  use ElixirChatAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end


#The following was a try, but did not work out.
#  def index(conn, _params) do
#    user_authenticated = ElixirChatApp.Auth.user_authenticated?(conn)
#    render(conn, "index.html", user_authenticated: user_authenticated)
#  end

##  def index(conn, _params) do
##    if fetch_current_user?(conn) do
##      render(conn, "chat.html")
##    else
##      render(conn, "index.html")
##    end
##  end

  def chat(conn, _params) do
    render(conn, "chat.html")
  end

#  def index(conn, _params) do
#    user_authenticated = ElixirChatApp.Auth.user_authenticated?(conn)
#    if user_authenticated do
#      render(conn, "chat.html")
#    else
#      render(conn, "index.html")
#    end
#  end
end
