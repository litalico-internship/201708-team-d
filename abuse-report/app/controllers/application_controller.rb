class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_user

    if cookies[:uuid].nil?
      uuid = Digest::SHA256.hexdigest(Time.now.to_s)
      @user = User.new(session_id: uuid)
      if @user.save
        cookies[:uuid] = uuid
      end
    else
      @user = User.find_by(session_id: cookies[:uuid])
      if @user.nil?
        uuid = Digest::SHA256.hexdigest(Time.now.to_s)
        @user = User.new(session_id: uuid)
        if @user.save
          cookies[:uuid] = uuid
        end
      end
  end
  end

end
