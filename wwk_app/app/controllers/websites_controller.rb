class WebsitesController < ApplicationController

def index
		@websites = Website.where kid_id: current_user.id
	end

	def show
    @website = Website.find(params[:id])
  end

  def new
  	@user = current_user.id
  	@website = Website.new
    @kid = Kid.find(params[:kid_id])
  end

  def edit
  end

  def create
    @user = current_user.id
    @kid = Kid.find(params[:kid_id])
    #@website = @kid.websites.new(website_params)
    @website = Website.new(website_params)
  	@website.kid_id = params[:kid_id].to_i

    if @website.save
				redirect_to user_kid_websites_path
		else
			render :new
    end
  end

  
  private
    def website_params
      params.require(:website).permit(:name, :url)
    end

end
