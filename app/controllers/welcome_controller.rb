class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end
  def admin
  end
end
