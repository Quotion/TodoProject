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
        if params[:project_id] == 0
            project = Project.new(title: params[:new_project])
            project.todo_projects << TodoProject.create(text: params[:todo], isCompleted: false)
            project.save
        else
            project = Project.find(params[:project_id])
            project.todo_projects << TodoProject.create(text: params[:todo], isCompleted: false)
        end
        render :json => {message: "ok"}
    end
    def update
        puts params[:isCompleted]
        todo = TodoProject.find(params[:id])
        todo.update(isCompleted: params[:isCompleted])
        render :json => todo, status: :ok
    end
end