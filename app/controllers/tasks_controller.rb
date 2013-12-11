class TasksController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @task    = @project.tasks.create(task_params)
    redirect_to project_path(@project.id)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to project_path(@task.project)
  end

  def toggle
    @task = Task.where(id: params[:id]).first
    return render nothing: true if @task.nil?
    @task.done = !@task.done
    @task.save
    render nothing: true
  end

  private

  def task_params
    params[:task].permit(:title)
  end
end
