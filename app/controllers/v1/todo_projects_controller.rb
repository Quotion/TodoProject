class V1::TodoProjectsController < ApplicationController
    def show
        todo = TodoProject.find(params[:id])
        render :json => todo, status: :ok
    end
    def create
        puts params
        render :json => {message: "ok"}
    end
    def update
        puts params
        todo = TodoProject.find(params[:id])
        render :json => todo, status: :ok
    end
end