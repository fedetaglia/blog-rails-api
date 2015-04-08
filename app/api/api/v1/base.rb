module API::V1
  class Base < API::Base

    version 'v1', using: :header, vendor: 'blog-rails-api'

    format :json

    mount API::V1::Session
    mount API::V1::Registration
    mount API::V1::Posts
  end
end
