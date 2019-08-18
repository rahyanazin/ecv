class SubjectsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
  	@subjects = Subject.all.order("created_at DESC")
  end

  def new
  	@subject = Subject.new
  end

  def create
  	@subject = Subject.new(subject_params)
  	if @subject.save
  		redirect_to @subject
  	else
  		render 'new'
  	end
  end

  def show
  end

  def list
    @subjects = Subject.all.order("created_at DESC")
  end

  def edit
  end

  def update
  	if @subject.update(subject_params)
  	  redirect_to @subject
  	else
  	 	render 'edit'
  	end
  end

   def destroy
  	@subject.destroy
  	redirect_to index_path
  end

  private

  def find_post
  	@subject = Subject.find(params[:id])
  end

  def subject_params
  	params.require(:subject).permit(:title, :description, :new, :visible)
  end
end
