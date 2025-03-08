class Api::PetsController < ApiController
  include RESTFramework::ModelControllerMixin

  self.fields = [:id, :name, :animal, :user]
  self.extra_member_actions = {first: :get}

  def first
    render(api: self.get_records.first!)
  end

  def get_recordset
    return Pet.all()
  end
end