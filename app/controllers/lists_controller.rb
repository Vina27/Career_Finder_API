class ListsController < ApplicationController
    def index
        @lists = List.all 
        render json: @lists 
    end 

    def show
        @list = List.find(params[:id])
        render json: @list
    end 

    # private 

    # def list_params
    #     params.permit(:job_id, :user_id)
    # end 
end

