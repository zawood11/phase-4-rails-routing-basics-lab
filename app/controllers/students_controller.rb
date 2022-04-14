class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        render json: Student.all.order(grade: :desc)
    end

    def highest_grade
        student = Student.order(grade: :desc).limit(1)
        render json: student[0]
    end
end
