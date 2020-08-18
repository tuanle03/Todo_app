class TagsController < ApplicationController
  before_action :find_tag, only: [:edit, :update, :destroy]
 
  def index
    @tags = current_user.tags
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = current_user.tags.new(tag_params)
    if @tag.save
      redirect_to tags_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tag.update(tag_params)
      redirect_to tags_path
    else
      render :edit
    end
  end

  def destroy
    @tag.destroy
    redirect_to tags_path
  end

  private
  def find_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
