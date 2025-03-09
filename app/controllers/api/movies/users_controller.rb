class Api::Movies::UsersController < Api::MoviesController
  include RESTFramework::BulkModelControllerMixin
  self.fields = { exclude: [ :movies, :created_at, :updated_at ] }

  def get_recordset
    Movie.find(params[:movie_id]).users
  end
end
