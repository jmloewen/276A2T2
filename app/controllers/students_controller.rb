class StudentsController < ApplicationController
  def index
    @students = Student.all.order("gpa DESC")
      
  end
  def display
    get './display'
  end
  def new #new is the user form.
    @student = Student.new
  end
  def show
    @student = Student.find(params[:id])
  end
  def create  #create translates the user form into the database.
      @student = Student.new(student_params)
      
      if @student.save
        redirect_to @student
      else
        render 'new'
      end
  end
  
  def update
    @student = Student.find(params[:id])
    
    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
    
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    
    redirect_to students_path
  end
  
  private
    def student_params
      params.require(:student).permit(:stdName, :weight, :height, :color, :gpa)  #a proper student needs a stdName and weight.
    end
end
