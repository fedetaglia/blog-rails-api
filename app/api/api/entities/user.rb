module API
  module Entities
    class User < Grape::Entity
      expose :id,        documentation: { type: 'Integer', desc: 'Id' }
      expose :username,  documentation: { type: 'String', desc: 'Username' }
      expose :email,     documentation: { type: 'String', desc: 'Email' }

      # Required when token_required specified as type
      expose :authentication_token, documentation: { type: 'String', desc: 'Users Access Token' }, if: { type: :token_required }

    end
  end
end