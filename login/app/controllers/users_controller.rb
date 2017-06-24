class UsersController < ApplicationController
  def signin
  end

  def signup
  end

  def index
  end

  def signin_submit
  end
  def signup_submit
    puts "check"
    name=params["name"]
    email=params["email"]
    password=params["password"]
    confirmpassword=params["password_confirmation"]
    puts "working"
    @user=User.create(name:name,email:email,password:password,password_confirmation:confirmpassword)
    if  @user.valid?
        @user.save
        session[:user_id]=@user.id
        return redirect_to '/users/index'
    end
    return redirect_to controller:'users', action:'signup', errors: true, messages:@user.errors.messages
end
end
