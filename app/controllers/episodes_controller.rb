class EpisodesController < ApplicationController
  def index
    render :index, locals: { show: find_show, episodes: Episode.all }
  end

  def show
    render :show, locals: { episode: find_episode }    
  end

  def new
    render :new, locals: { show: find_show, episode: Episode.new }
  end

  def create
    show = find_show
    episode = show.episodes.build(episode_params)

    if episode.save
      flash[:notice] = 'Host was successfully created.'
      redirect_to [show, episode]
    else
      render :new, locals: { show: find_show, episode: episode }
    end
  end

  def edit
    render :edit, locals: { show: find_show, episode: find_episode }
  end

  def update
    show = find_show
    episode = find_episode

    if episode.update(episode_params)
      flash[:notice] = 'Episode was successfully updated.'
      redirect_to [show, episode]
    else
      render :edit , locals: { show: show, episode: episode}
    end
  end

  def destroy
    show = find_show
    episode = find_episode

    if episode.destroy
      flash[:notice] = 'Episode was successfully destroyed.'
      redirect_to show
    else
      render :show, locals: { show: show, episode: episode}
    end
  end

  private

  def find_show
    Show.find(params[:show_id])
  end

  def find_episode
    Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:title, :description, :show_id)
  end
end