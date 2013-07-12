class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit, :update, :destroy]
  before_action :set_network, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
    @shows = Show.all
  end

  def show
  end

  def new
    @show = Show.new
  end

  def edit
  end

  def create
    @show = @network.shows.build(show_params)

    respond_to do |format|
      if @show.save
        format.html { redirect_to network_shows_path(@network), notice: 'Show was successfully created.' }
        format.json { render action: 'show', status: :created, location: @show }
      else
        format.html { render action: 'new' }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @show.update(show_params)
        format.html { redirect_to @show, notice: 'Show was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @show.destroy
    respond_to do |format|
      format.html { redirect_to network_shows_url(@network), notice: 'Show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_show
      @show = Show.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def show_params
      params.require(:show).permit(:name, :description, :network_id)
    end

    def set_network
      @network = Network.find(params[:network_id])
    end

end
