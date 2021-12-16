# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_curret_user

  def set_curret_user
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
