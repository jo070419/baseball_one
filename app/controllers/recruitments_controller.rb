class RecruitmentsController < ApplicationController
  def index
    @recruitments = Recruitment.all
  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    @recruitment = Recruitment.new(recruitment_params)
    if @recruitment.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @recruitment = Recruitment.find(params[:id])
  end

  def edit
    @recruitment = Recruitment.find(params[:id])
  end

  def update
    @recruitment = Recruitment.find(params[:id])
    if @recruitment.update(recruitment_params)
      redirect_to recruitment_path
    else
      render :edit
    end
  end

  def destroy
    recruitment = Recruitment.find(params[:id])
    recruitment.destroy
    redirect_to root_path
  end

  private
  def recruitment_params
    params.require(:recruitment).permit(:title, :category_id, :prefecture_id, :municipality, :locate, :ground, :date, :start_time_id, :end_time_id, :dead_line, :recruit_text).merge(user_id: current_user.id)
  end
end
