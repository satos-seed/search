class Users::UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
    	if @user.update(user_params)
            flash[:notice] = "更新完了"
            redirect_to user_path(@user.id)
        else
            render :edit
        end
    end

    def index
    	@users = User.all
    end

	def destroy
		book = Book.find(params[:id])
        book.destroy
        flash[:notice] = "アカウント削除"
    	redirect_to root_path
	end

	private

	def user_params
		params.require(:user).permit(:name)
	end

end
