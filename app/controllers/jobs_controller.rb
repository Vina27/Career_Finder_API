class JobsController < ApplicationController
    def index
        @jobs = Job.all 
        render json: @jobs
    end 

    def create 
        @job = Job.create(job_params)
        if @job.valid? 
            render json: @job, status: 201 
        else 
            render json: @job.errors.full_messages
        end
    end  

        def show 
            @job = Job.find(params[:id])
            render json: @job 
        end 

        def update 
            @job = Job.find(params[:id])
            @job.update(job_params)
            render json: @job
        end 

            def destroy 
            @job = Job.find(params[:id])
            @job.destroy
            render json: {message: "Job has been deleted successfully!", job: @job}
        end 


    private 

        def job_params
            params.permit(:job_title, :description, :user_id, :category_id, :list_id)
        end 
end

end
