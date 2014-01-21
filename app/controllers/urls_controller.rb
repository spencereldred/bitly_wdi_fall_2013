class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def show
    @url = Url.find(params[:id])
  end

  def new

  end

  def create
    url = params[:url]
    Url.create(link: url, hash_code: SecureRandom.urlsafe_base64(8))
    redirect_to urls_path

  end

  def edit
    @url = Url.find(params[:id])

  end

  def update
    puts "&&&&&&&  We reached the update action with params[:url] = #{params[:url]}"
    url = params[:url]
    Url.update_attributes(link: url, hash_code: SecureRandom.urlsafe_base64(8))
    redirect_to root
  end

  def destroy

  end

  def redirection
    @url = Url.find_by_hash_code (params[:code])
    puts @url.link
    redirect_to @url.link
  end

  def preview
    @url = Url.find_by_hash_code (params[:code])
    @link = @url.link
    render :preview
  end

end
