class TapingsController < ApplicationController
  def index
    render :index, locals: { episode: find_episode, tapings: Taping.all }
  end

  def show
    render :show, locals: { taping: find_taping }    
  end

  def new
    render :new, locals: { episode: find_episode, taping: Taping.new }
  end

  def create
    episode = find_episode
    taping = episode.build_taping(taping_params)

    if taping.save
      flash[:notice] = 'Taping was successfully created.'
      redirect_to [episode, taping]
    else
      render :new, locals: { episode: find_episode, taping: taping }
    end
  end

  def edit
    render :edit, locals: { episode: find_episode, taping: find_taping }
  end

  def update
    episode = find_episode
    taping = find_taping

    if taping.update(taping_params)
      flash[:notice] = 'Taping was successfully updated.'
      redirect_to [episode, taping]
    else
      render :edit , locals: { episode: episode, taping: taping }
    end
  end

  def destroy
    episode = find_episode
    taping = find_taping

    if taping.destroy
      flash[:notice] = 'Taping was successfully destroyed.'
      redirect_to episode 
    else
      render :show, locals: { episode: episode, taping: taping }
    end
  end

  private

  def find_episode
    Episode.find(params[:episode_id])
  end

  def find_taping
    Taping.find(params[:id])
  end

  def taping_params
    params.require(:taping).permit(:date, :time, :episode_id)
  end
end