class Api::Users::MoviesController < Api::UsersController
  include RESTFramework::BulkModelControllerMixin
  self.fields = { exclude: [ :users, :created_at, :updated_at ] }

  def get_recordset
    User.find(params[:user_id]).movies
  end
end
