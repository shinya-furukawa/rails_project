class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    # 新規登録画面へ
    def new
        @task = Task.new
    end

    # 新規登録処理
    def create
        @task = Task.create(task_params)
        redirect_to tasks_path
    end

    # 編集画面へ
    def edit
        @task = Task.find(params[:id])
    end

    # 編集処理
    def update
        @task = Task.find(params[:id])
        @task.update(task_params)
        redirect_to tasks_path
    end

    # 削除処理
    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_path
    end

    private
        def task_params
            params.require(:task).permit(:title)
        end
end
