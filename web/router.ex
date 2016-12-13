defmodule GraphSinth.Router do
  use GraphSinth.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GraphSinth do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  forward "/api", Absinthe.Plug,
  schema: GraphSinth.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
  schema: GraphSinth.Schema

  # Other scopes may use custom stacks.
  # scope "/api", GraphSinth do
  #   pipe_through :api
  # end
end
