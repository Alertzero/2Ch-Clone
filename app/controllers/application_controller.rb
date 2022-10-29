class ApplicationController < ActionController::Base
    include Pundit::Authorization
    before_action :authenticate_user!

    def after_sign_out_path_for scope
        root_path
    end

end
