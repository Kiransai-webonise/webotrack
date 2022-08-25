module WeboTrack
  class WebousersController < ApplicationController
    before_action :get_user, only: [:edit_user_to_assign_asset, :update_user_with_asset]

    def new
      @webouser = Webouser.new
    end

    def create
      @webouser = Webouser.new(user_params)

      if @webouser.save
        redirect_to users_path, notice: "Blog type was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def index
      @webousers = Webouser.all
    end

    def edit_user_to_assign_asset
      @assets = Asset.all
    end

    def update_user_with_asset
      @webouser.update(user_params)

      redirect_to users_path
    end

    def get_user
      @webouser = Webouser.find(params[:id])
    end

    private
    def user_params
      params.require(:webouser).permit(:name, :phone, :email, :status, :asset_id)
    end
  end
end
