class V1::TodoProjectsController < ApplicationController
    def index
        todos = TodoProject.all
        render :json => todos, status: :ok
    end
    def show
        todo = TodoProject.find(params[:id])
        render :json => todo, status: :ok
    end
    def create
        puts params
        render :json => {message: "ok"}
    end
    def update
        puts params[:isCompleted]
        todo = TodoProject.find(params[:id])
        todo.update(isCompleted: params[:isCompleted])
        render :json => todo, status: :ok
    end
end