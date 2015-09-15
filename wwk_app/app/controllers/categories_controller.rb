class CategoriesController < ApplicationController

def index
		@categories = Category.where kid_id: current_kid.id
	end

	def show
		@category = Category.find(params[:id])
  end

  def new
    @kid = Kid.find(params[:kid_id])
  end

  def edit
  end

  def create
    @kid = Kid.find(params[:kid_id])
    @category = @kid.categories.new(category_params)

    if @category.save
				redirect_to user_kid_categories_path(@kid)
		else
			render :new
    end
  end

  
  private
    def category_params
      params.require(:cateogry).permit(:name, :kid_id, :user_id)
    end
end

