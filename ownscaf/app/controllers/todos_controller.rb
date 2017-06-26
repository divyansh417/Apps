class TodosController < ApplicationController
  
  before_action :set_todo, only: [:show, :edit,:update, :destroy]
  before_action :print_this

  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def edit
  end

  def create
    todo = params["todo"]
    todo = todo.permit(:title, :content, :deadline, :important)
    @todo = Todo.new(todo)
    is_save = @todo.save
    unless is_save
      render :new
    else
      redirect_to '/todos/'
    end

  end

  def update
  

    todo = params["todo"]
    todo = todo.permit(:title, :content, :deadline, :important)
    is_update =  @todo.update(todo)
  
    unless is_update
      render :edit
    else
      redirect_to '/todos/'
    end



  end

  def destroy
    @todo.destroy
    redirect_to '/todos'
  end


  private 
  def set_todo
      puts "set_Todo"
        @todo = Todo.find(params["id"])
  end


  def print_this
    puts "test"
  end

end
