class JobsController < ApplicationController
  def index
    @q = Job.ransack(params[:q])
    @job = @q.result
#    @job = @q.result.includes(:name, :category_id)
  end

 def search
    @q = Job.search(search_params)
    @job = @q.result
#    @job = @q.result.includes(:name, :category_id)

 end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
   @job = Job.new(user_params)

   if @job.save
      flash[:success] = '仕事を登録しました。'
      redirect_to @job
   else
      flash.now[:danger] = '仕事の登録に失敗しました。'
      render :new
   end
  end
  
  private

  def user_params
    params.require(:job).permit(:name)
  end

  def search_params
      params.require(:q).permit(:category_id)
  end

end
