class Api::UsersController < ApiController
  include RESTFramework::ModelControllerMixin

  self.fields = {exclude: [:created_at, :updated_at, :movies]}

  def get_recordset
    return User.all()
  end
end