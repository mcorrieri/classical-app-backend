class FavoritesController < ApplicationController

 def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def show
    render json: @favorite
  end

  def new
    @favorite = Favorite.new
    render json: @favorite
  end

  def edit
  end

  def create
    @favorite = Favorite.new(favorite_params)
      if @favorite.save
        render json: @favorite
      else
        render json: {error: "Invalid favorite"}
      end
  end
  

#   def update
#       if @favorite.update(favorite_params)
#        render json: @favorite
#       else
#         render json: {error: "Could not update favorite"}
#       end
#   end
  

  def destroy
    @favorite.destroy
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :composer_id)
  end
end