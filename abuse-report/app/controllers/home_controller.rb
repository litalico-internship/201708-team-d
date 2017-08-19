class HomeController < ApplicationController
  before_action :check_user

  def index
    @notice = Notice.where(user_id: @user.id).order(created_at: :desc).first
  end

  def done
  end
end
