class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1 or /users/1.json
  def show
    render json: @user
  end

  # GET /users/new
  def new
    @user = User.new
    render json: @user
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
      if @user.save
        render json: @user
      else
        render json: {error: "Invalid username or password"}
      end
  end
  

  # PATCH/PUT /users/1 or /users/1.json
  def update
      if @user.update(user_params)
       render json: @user
      else
        render json: {error: "Could not update user"}
      end
  end
  

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :username, :email)
    end
end
