class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @status = set_student.status
  end

  def activate
    set_student.toggle(:activate)
    redirect_to student_path
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end


end
