class Api::RootController < ApiController
  # self.extra_actions = {test: :get}

  def root
    render(
      api: {
        message: "Welcome to the owned pets and watched movies API."
      },
    )
  end

  # def test
  #   render(api: {message: "Hello, world!"})
  # end
end
