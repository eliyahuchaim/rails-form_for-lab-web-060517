class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def index
    @school_classes = SchoolClass.all
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update!(school_class_params)
    redirect_to school_class_path(@class)
  end

  private

    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end

end
