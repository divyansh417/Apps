class HomeController < ApplicationController
  before_action :authenticate_user! 
  def index
  	Signup.welcome(current_user.email).deliver_now
  end
end
