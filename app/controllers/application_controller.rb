class ApplicationController < ActionController::API
   wrap_parameters format:[]
   
    def create
        bird = Bird.create(params)
        render json: bird, status: :created
    end

    private

    def bird_params
        params.permit(:name, :species)
    end


end
