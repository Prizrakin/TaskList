class CategoriesController < ApplicationController
    before_action :only_current_user!, only: [:new, :create,:show]

    def new
        @category = Category.new
    end

    def create
        @category = Category.new category_params
        @category.user_id = current_user.id
    if @category.save
        flash[:alert] = "Успешно создано"
        redirect_to root_path
    else
        flash[:alert] = "Возникли проблемы"  
        render :new
    end
    end



private

    def category_params
        params.require(:category).permit(:name)
    end


    def only_current_user!
        if current_user
        else
            redirect_to root_path
        end
    end
end