class RegistrationsController < Devise::RegistrationsController

    protected

    def update_resource(resource, params)
        if params[:password].blank? && params[:password_confirmation].blank? && params[:email] === current_user.email
            resource.update_without_password(params)
        else
            super
        end
    end

    def after_update_path_for(resource)
        edit_user_registration_path
    end

end