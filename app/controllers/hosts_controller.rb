class HostsController < ApplicationController
  def index
    render :index, locals: { show: find_show, hosts: Host.all }
  end

  def show
    render :show, locals: { host: find_host }    
  end

  def new
    render :new, locals: { show: find_show, host: Host.new }
  end

  def create
    show = find_show
    host = show.hosts.build(host_params)

    if host.save
      flash[:notice] = 'Host was successfully created.'
      redirect_to [show, host]
    else
      render :new, locals: { show: find_show, host: host }
    end
  end

  def edit
    render :edit, locals: { show: find_show, host: find_host }
  end

  def update
    show = find_show
    host = find_host

    if host.update(host_params)
      flash[:notice] = 'Host was successfully updated.'
      redirect_to [show, host]
    else
      render :edit , locals: { show: show, host: host }
    end
  end

  def destroy
    show = find_show
    host = find_host

    if host.destroy
      flash[:notice] = 'Host was successfully destroyed.'
      redirect_to show_hosts_url(show)
    else
      render :show, locals: { show: show, host: host }
    end
  end

  private

  def find_show
    Show.find(params[:show_id])
  end

  def find_host
    Host.find(params[:id])
  end

  def host_params
    params.require(:host).permit(:name, :show_id)
  end
end