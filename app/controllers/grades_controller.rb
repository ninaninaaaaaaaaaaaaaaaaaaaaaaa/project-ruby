class GradesController < ApplicationController
  def index
    if current_user.teacher?
      @grades = Grade.where(teacher_id: current_user.teacher.id)
    elsif current_user.student?
      @grades = Grade.where(student_id: current_user.student.id)
    else
      @grades = Grade.all
    end
  end

  def edit
    @grade = Grade.find(params[:id])
    authorize! :update, @grade
  end
end
