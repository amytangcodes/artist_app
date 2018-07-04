class ApplicationController < ActionController::Base
  
  include Response
  include ExceptionHandler

  skip_before_action :verify_authenticity_token
  protect_from_forgery with: :null_session
  
end
