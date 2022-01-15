class MyCKEditorBaseController < ActionController::Base

    before_action :authenticate_user! # or some other auth/permission logic here, like Pundit
  
  end