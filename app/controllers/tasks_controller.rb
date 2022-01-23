class TasksController < ApplicationController
  def index
      @tasks = Tasks.all
  end

  def show
      @tasks = Tasks.find(params[:id])
  end

  def new
      @tasks = Tasks.new
  end

  def create
      @tasks = Tasks.new(tasks_params)

      if @tasks.save
        flash[:success] = 'タスクが作成完了しました'
        redirect_to @tasks
      else
        flash.now[:danger] = 'タスクが作成されません'
        render :new
      end
  end

  def edit
      @tasks = Tasks.find(params[:id])
  end

  def update
    @tasks = Tasks.find(params[:id])

    if @tasks.update(tasks_params)
      flash[:success] = 'タスクは正常に更新されました'
      redirect_to @tasks
    else
      flash.now[:danger] = 'タスクは更新されませんでした'
      render :edit
    end
  end

  def destroy
    @tasks = Tasks.find(params[:id])
    @tasks.destroy

    flash[:success] = 'タスクは正常に削除されました'
    redirect_to tasks_url
  end
end

private

  # Strong Parameter
def tasks_params
  params.require(:tasks).permit(:content)
end
