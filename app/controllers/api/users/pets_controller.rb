class Api::Users::PetsController < Api::UsersController
  include RESTFramework::BulkModelControllerMixin
  self.fields = { exclude: [ :users, :created_at, :updated_at, :user ] }

  def get_recordset
    User.find(params[:user_id]).pets
  end
end
