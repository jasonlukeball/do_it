class Api::V1::BaseController < ApplicationController

  skip_before_action :authenticate_user!
  before_filter :authenticate_via_basic_auth

  def ping
    render :text => 'pong'
  end

  protected

  def authenticate_via_basic_auth
    authenticate_or_request_with_http_basic do |email, password|
      @user = User.find_by_email(email)
      @user.valid_password?(password)
    end
  end

  def current_user
    @user
  end

end