module WeboTrack
  class AssetsController < ApplicationController
    def new
      @asset = Asset.new
    end

    def index
      @assets = Asset.all
    end

    def create
      @asset = Asset.new(assets_params)

      if @asset.save
        redirect_to assets_path, notice: "Blog type was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    private
    def assets_params
      params.require(:asset).permit(:name, :description)
    end
  end
end
