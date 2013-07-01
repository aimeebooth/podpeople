class NetworksController < ApplicationController
  before_filter :find_network, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @networks = Network.all
  end

  def edit
    
  end

  def new
    @network = Network.new
  end

  def create
   @network = Network.new(network_params)

    if @network.save
      flash[:notice] = "Network successfully created"
      redirect_to networks_path
    else
      flash[:warning] = "Error creating network"
      render :new
    end
  end

  def update
    if @network.update_attributes(network_params)
      redirect_to network_path(@network), notice: "Network successfully updated"
    else
      flash[:warning] = "Error creating network"
      render :edit
    end
  end

  def destroy
    if @network.destroy
      redirect_to networks_path, notice: "Network successfully destroyed"
    else
      redirect_to network_path(@network), warning: "Network could not be destroyed"
    end
  end

  private

  def find_network
    @network = Network.find(params[:id])
  end

  def network_params
    params.require(:network).permit(:name)
  end
end