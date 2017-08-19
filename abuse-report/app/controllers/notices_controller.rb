class NoticesController < ApplicationController
  before_action :check_user

  def index
    @notices = Notice.where(user_id: @user.id)
  end

  def state_change
    notice = Notice.find(params[:notice_id])
    notice.status_id = 2
  end

  def new

  end

  def create
    @notice = Notice.new(notice_params)
    @notice.save
  end

  private
    def notice_params
      params.permit(:school, :user, :status)
    end
end
