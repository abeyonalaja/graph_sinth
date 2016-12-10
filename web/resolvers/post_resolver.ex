defmodule GraphSinth.PostResolver do
  alias GraphSinth.Repo
  alias GraphSinth.Post

  def all(_args, _info) do
    {:ok, Repo.all(Post)}
  end

end
