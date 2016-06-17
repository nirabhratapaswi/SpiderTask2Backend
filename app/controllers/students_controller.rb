class StudentsController < ApplicationController
    def index
        @student = Student.all
    end
    def show
        @student = Student.find(params[:id])
    end
    def new
        @student = Student.new
    end
    def edit
    end
    def create
        require 'securerandom' 
        random_passkey = SecureRandom.hex(5)
        @student = Student.new(student_params)
        @student.unique_passkey = random_passkey
        if @student.save
            redirect_to @student
        else
            render 'new'
        end
    end
    def update
    end
    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        
        redirect_to students_path
    end
    
    private
    def student_params
        params.require(:student).permit(:student_name, :roll_number, :department, :email, :address, :about_me)
    end
end
