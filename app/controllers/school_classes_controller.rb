class SchoolClassesController < ApplicationController
   def index 
    @school_classes = SchoolClass.all
   end 

   def show
    @school_class = SchoolClass.find_by(params[:id])
   end

   def new 
    @school_class = SchoolClass.new
   end 
   
    def create 
        @school_classes = SchoolClass.new 
        @school_classes.title = params[:title]
        @school_classes.room_number = params[:title]
        @school_classes.save
          redirect_to school_class_path(@school_classes)
    end 

 
def update
  @school_class = SchoolClass.find(params[:id])
  @school_class.update(school_params)
  redirect_to school_class_path(@school_classes)
end
 
private
 
def school_params
  params.require(:school_class).permit(:title, :room_number)
end

end