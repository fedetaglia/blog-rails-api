module API::V1
  class Registration < API::V1::Base
    
    resource :registration do

      desc "Returns the currently signed in user", entity: API::Entities::User
      params do
        requires :access_token, type: String, desc: 'Access Token'
      end
      get do
        authenticate_user!
        present current_user, with: API::Entities::User, type: :token_required
      end
      
      
      desc "Create a new user", entity: API::Entities::User
      params do
        optional :user, type: Hash do
          optional :username,  type: String, desc: 'Profilename'
          requires :email,     type: String, desc: 'Email'
          requires :password,  type: String, desc: 'Password'
        end
      end
      post do
        @user = User.create(params[:user])
        if @user.valid? || @user.persisted?
          present @user, with: API::Entities::User, type: :token_required
        else
          error!(@user.errors.full_messages, 422)
        end
      end

      desc "Updates the currently logged in users profile", entity: API::Entities::User
      params do
        requires :access_token, type: String, desc: 'Access Token'
        optional :user, type: Hash do
          optional :username,  type: String, desc: 'Profilename'
          optional :email,     type: String, desc: 'Email'
        end
      end

      put do
        authenticate_user!

        if current_user.update_attributes params[:user]
          present current_user, with: API::Entities::User, type: :token_required
        else
          error!(current_user.errors.full_messages, 422)
        end

      end 

    end

  end

end