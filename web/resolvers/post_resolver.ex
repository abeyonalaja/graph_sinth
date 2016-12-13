defmodule GraphSinth.PostResolver do
  alias GraphSinth.Repo
  alias GraphSinth.Post

  def all(_args, _info) do
    {:ok, Repo.all(Post)}
  end

  def create(args, _info) do
    %Post{}
    |> Post.changeset(args)
    |> Repo.insert 
  end

  def update(%{id: id, post: post_params}) do
    Repo.get!(Post,id)
    |> Post.changeset(post_params)
    |> Repo.update
  end

end
