class Api::V1::AuthController < ApplicationController
  def login
    if params[:email].nil? || params[:password].nil?
      render status: :bad_request
      return
    end

    unless (@user = User.find_by_email(params[:email]))
      render status: :not_found
      return
    end

    if @user&.authenticate(params[:password])
      payload = { user_id: @user.id }
      token = JWT.encode payload, Rails.application.secret_key_base, 'HS256'
      render json: {"token": token, "exp": Time.now + 24.hours.to_i, "username": @user.username}, status: :ok
      return
    end

    render status: :unauthorized
  end
end
