class KidsController < ApplicationController

	def index
		@kids = Kid.where user_id: current_user.id
	end

	def show
    @kid = Kid.find(params[:id])
  end

  def new
    #@kid = Kid.new
    @user = User.find(params[:user_id])
    #@kid = @user.kids.new(kid_params)
  end

  def edit
  end

  def create
    @user = User.find(params[:user_id])
    @kid = @user.kids.new(kid_params)

    if @kid.save
				redirect_to user_kids_path(@user)
		else
			render :new
    end
  end

  
  private
    def kid_params
      params.require(:kid).permit(:name, :gender, :age, :user_id)
    end
end
