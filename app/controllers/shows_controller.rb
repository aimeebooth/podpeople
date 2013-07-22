class ShowsController < ApplicationController
  def index
    render :index, locals: { network: find_network, shows: find_network.shows }
  end

  def show
    render :show, locals: { show: find_show }
  end

  def new
    render :new, locals: { network: find_network, show: Show.new }
  end

  def edit
    render :edit, locals: { network: find_show.network, show: find_show }
  end

  def create
    network = find_network
    show = network.shows.build(show_params)

    if show.save
      flash[:notice] = 'Show was successfully created.'
      redirect_to network_shows_path(network)
    else
      render :new, locals: { network: find_network, show: show }
    end
  end

  def update
    network = find_network
    show = find_show

    if show.update(show_params)
      flash[:notice] = 'Show was successfully updated.'
      redirect_to [network, show]
    else
      render :edit , locals: { show: show }
    end
  end

  def destroy
    network = find_network
    show = find_show

    if show.destroy
      flash[:notice] = 'Show was successfully destroyed.'
      redirect_to network_shows_url(network)
    else
      render :show, locals: { network: network, show: show }
    end
  end

  private
    def find_show
      Show.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def show_params
      params.require(:show).permit(:name, :description, :network_id)
    end

    def find_network
      Network.find(params[:network_id])
    end

end
