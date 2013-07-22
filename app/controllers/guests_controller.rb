class GuestsController < ApplicationController
  def index
    render :index, locals: { episode: find_episode, guests: Guest.all }
  end

  def show
    render :show, locals: { guest: find_guest }    
  end

  def new
    render :new, locals: { episode: find_episode, guest: Guest.new }
  end

  def create
    episode = find_episode
    guest = episode.guests.build(guest_params)

    if guest.save
      flash[:notice] = 'Guest was successfully created.'
      redirect_to [episode, guest]
    else
      render :new, locals: { episode: find_episode, guest: guest }
    end
  end

  def edit
    render :edit, locals: { episode: find_episode, guest: find_guest }
  end

  def update
    episode = find_episode
    guest = find_guest

    if guest.update(guest_params)
      flash[:notice] = 'Guest was successfully updated.'
      redirect_to [episode, guest]
    else
      render :edit , locals: { episode: episode, guest: guest }
    end
  end

  def destroy
    episode = find_episode
    guest = find_guest

    if guest.destroy
      flash[:notice] = 'Guest was successfully destroyed.'
      redirect_to episode 
    else
      render :episode, locals: { episode: episode, guest: guest }
    end
  end

  private

  def find_episode
    Episode.find(params[:episode_id])
  end

  def find_guest
    Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name, :episode_id)
  end
end