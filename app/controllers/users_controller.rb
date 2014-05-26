class UsersController < ActiveRecord::Base
  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.signup_confirmation(@user).deliver
      redirect_to @user, notice: "Signed up successfully."
    else
      render :new
    end
  end
end