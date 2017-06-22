class TodosController < ApplicationController
  def add
  	content=params[:content]
  	todo=Todo.new
  	todo.content=content
  	todo.done=false
  	todo.user_id=session[:user_id]
  	todo.save
  	return redirect_to '/users/index'
  end

  def done
  	todo_id=params[:todo_id]
  	todo=Todo.find(todo_id)
  	if todo.user.id==session[:user_id]
  		 todo.done=!todo.done
  		 todo.save
  	end
  	return redirect_to '/users/index'
  end
end
