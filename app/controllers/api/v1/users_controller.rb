module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :edit, :update, :destroy]

      # GET /users
      # GET /users.json
      def index
        @users = User.all
        render json: @users
      end

      # GET /users/1
      # GET /users/1.json
      def show
        @user = User.find(params[:id])
        render json: @user
      end

      # GET /users/new
      def new
        @user = User.new
      end

      # GET /users/1/edit
      def edit
      end

      # POST /users
      # POST /users.json
      def create
        @user = User.new(user_params)

     
        if @user.save
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /users/1
      # PATCH/PUT /users/1.json
      def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # DELETE /users/1
      # DELETE /users/1.json
      def destroy
        @user.destroy
        render json: 'Deleted'
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
          @user = User.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def user_params
          params.require(:user).permit(:email, :password)
        end
    end
  end
end
