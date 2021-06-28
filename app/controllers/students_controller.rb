class StudentsController < ApplicationController

  def index
    # byebug
    if params[:name]
    students = Student.all.select{|student| student.to_s.upcase.include?(params[:name].upcase)}
    else
      students = Student.all
    end
    # students = Student.find_by(first_name: params[:name])
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
