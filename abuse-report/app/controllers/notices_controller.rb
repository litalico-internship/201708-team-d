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
    @signs = Sign.all
    @notice = Notice.new(user_id: @user.id)
  end

  def create
    @notice = Notice.new
    sign = Sign.find(params[:sign_id])
    @notice.notice_signs.build(sign: sign)
    @notice.save
    redirect_to controller: 'home', action: 'done'
  end

  private
    def notice_params
      params.permit(:school, :user, :status, notice_signs_attributes:[
        :sign_id
        ])
    end
end
