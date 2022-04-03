class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students 
    end 
    def grades 
        h_to_lo_grade = Student.order('grade desc').all
        render json: h_to_lo_grade
    end 
    def highest_grade 
        high = Student.order('grade desc').first
        render json: high
    end
end
