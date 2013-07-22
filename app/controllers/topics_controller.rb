class TopicsController < ApplicationController
  def index
    render :index, locals: { episode: find_episode, topics: Topic.all }
  end

  def show
    render :show, locals: { topic: find_topic }    
  end

  def new
    render :new, locals: { episode: find_episode, topic: Topic.new }
  end

  def create
    episode = find_episode
    topic = episode.topics.build(topic_params)

    if topic.save
      flash[:notice] = 'Topic was successfully created.'
      redirect_to [episode, topic]
    else
      render :new, locals: { episode: find_episode, topic: topic }
    end
  end

  def edit
    render :edit, locals: { episode: find_episode, topic: find_topic }
  end

  def update
    episode = find_episode
    topic = find_topic

    if topic.update(topic_params)
      flash[:notice] = 'Topic was successfully updated.'
      redirect_to [episode, topic]
    else
      render :edit , locals: { episode: episode, topic: topic }
    end
  end

  def destroy
    episode = find_episode
    topic = find_topic

    if topic.destroy
      flash[:notice] = 'Topic was successfully destroyed.'
      redirect_to episode 
    else
      render :episode, locals: { episode: episode, topic: topic }
    end
  end

  private

  def find_episode
    Episode.find(params[:episode_id])
  end

  def find_topic
    Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:name, :episode_id)
  end
end