class ComposersController < ApplicationController

    def index
        @composers = Composer.all
        render json: @composers
    end

    def show
        @composer = Composer.find(params[:id])
        render json :@composer
    end

    private
    def composer_params
        params.require(:composer).permit(:name, :full_name, :born, :died, :genre, :bio)
    end

end
