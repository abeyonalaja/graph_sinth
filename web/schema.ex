defmodule GraphSinth.Schema do
  use Absinthe.Schema
  import_types GraphSinth.Schema.Types

  query do

    field :posts, list_of(:post) do
      resolve &GraphSinth.PostResolver.all/2
    end

    field :users, list_of(:user) do
      resolve &GraphSinth.UserResolver.all/2
    end

    field :user, type: :user do
      arg :id, non_null(:id)
      resolve &GraphSinth.UserResolver.find/2
    end

  end
end
