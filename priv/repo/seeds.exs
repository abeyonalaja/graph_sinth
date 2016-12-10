# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     GraphSinth.Repo.insert!(%GraphSinth.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias GraphSinth.User
alias GraphSinth.Post
alias GraphSinth.Repo

Repo.insert!(%User{name: "Abey Onalaja", email: "abey.onalaja@gmail.com"})
Repo.insert!(%User{name: "Chris Black", email: "abey.onalaja@gmail.com"})


for _ <- 1..10 do
  Repo.insert! (%Post{ title: Faker.Lorem.sentence,
                       body: Faker.Lorem.paragraph,
                     user_id: [1,2] |> Enum.take_random(1) |> hd })
end
