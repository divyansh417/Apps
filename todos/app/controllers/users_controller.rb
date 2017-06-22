class UsersController < ApplicationController
  def index
    if session[:user_id].nil?
      return redirect_to '/users/signin'
    end
    @todos=Todo.where(user_id:session[:user_id])
  end

  def signin
  end

  def signup
  end

 def signin_submit
    password = params["password"]
    email = params["email"]
 
    user = User.where(email: email).first
    if user
        if user.password == password
            session[:user_id] = user.id
            return redirect_to '/users/index'
        else
            return redirect_to '/users/signin'
        end
 
    else
        return redirect_to '/users/signup'
 
    end
 
  end

  def signup_submit
      password=params["password"]
      email=params["email"]
      name=params["name"]
      user=User.where(email:email).first
      if user
          return redirect_to '/users/index'
      else
        user=User.new
        user.name=name
        user.email=email
        user.password=password
        user.save
        session[:user_id]=user.id
        return redirect_to '/users/index'
      end
  end

  def logout
       session[:user_id]=nil
       return redirect_to '/'
  end
end
