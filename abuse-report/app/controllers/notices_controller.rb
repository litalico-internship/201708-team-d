class NoticesController < ApplicationController
  before_action :check_user

  def index
    @notices = Notice.where(user_id: @user.id).order(created_at: :desc)
  end

  def state_change
    notice = Notice.find(params[:notice_id])
    id = params[:id].to_i
    if 0 < id && id < 5
      notice.status_id = id
      notice.save
      redirect_to :root
    end
  end

  def new
    @signs = Sign.all
    @notice = Notice.new(user_id: @user.id)
    @school = School.all.shuffle.first
  end

  def create
    @notice = Notice.new(user_id: @user.id, status_id: 1)
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
