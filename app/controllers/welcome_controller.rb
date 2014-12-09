class WelcomeController < ApplicationController
  def index
    @baby = Baby.all
    @letter = Letter.all
  end
end
