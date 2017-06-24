class UsersController < ApplicationController
  def signin
  end

  def signup
  end

  def index
  end

  def signin_submit
    if session[:user_id]
      return redirect_to '/users/index'
    end
    email=params["email"]
    password=params["password"]
    @user=User.where(email:email).first
    puts @user
    if @user
        if @user.password==password
          session[:user_id]=@user.id
          return redirect_to '/users/index'
        end
        message="Wrong password try again"
        return redirect_to controller:'users',action:'signin',errors:true,message:message

    end
    message="User doesnot exist"
    return redirect_to controller:'users',action:'signin',errors:true,message:message

  end
  def signup_submit
    name=params["name"]
    email=params["email"]
    password=params["password"]
    confirmpassword=params["password_confirmation"]
    @user=User.create(name:name,email:email,password:password,password_confirmation:confirmpassword)
    if  @user.valid?
        @user.save
        session[:user_id]=@user.id
        return redirect_to '/users/index'
    end
    return redirect_to controller:'users', action:'signup', errors: true, messages:@user.errors.messages
end
end
