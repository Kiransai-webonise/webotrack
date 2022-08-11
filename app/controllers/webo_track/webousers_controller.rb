module WeboTrack
  class WebousersController < ApplicationController
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

    def assign_asset_edit
      @webouser = Webouser.find(params[:id])
      @assets = Asset.all
    end

    def assign_asset_update
      @webouser = Webouser.find(params[:id])
      @webouser.update(user_params)

      redirect_to users_path
    end

    private
    def user_params
      params.require(:webouser).permit(:name, :phone, :email, :status, :asset_id)
    end
  end
end
