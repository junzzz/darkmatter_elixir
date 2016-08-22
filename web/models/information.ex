defmodule DarkmatterElixir.Information do
  use DarkmatterElixir.Web, :model

  schema "informations" do
    field :title, :string
    field :content, :binary
    field :start_at, Ecto.DateTime
    field :end_at, Ecto.DateTime
    field :create_user_id, :integer
    field :update_user_id, :integer

    field :created_at, Ecto.DateTime
    field :updated_at, Ecto.DateTime
    field :deleted_at, Ecto.DateTime
  end

  @required_fields ~w(title content created_at updated_at)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
