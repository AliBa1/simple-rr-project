class Api::MoviesController < ApiController
  include RESTFramework::ModelControllerMixin

  self.fields = [:id, :name]
  self.extra_member_actions = {first: :get}

  def first
    render(api: self.get_records.first!)
  end

  def get_recordset
    return Movie.all()
  end
end