module API
  module Entities
    class Post < Grape::Entity
      expose :id,        documentation: { type: 'Integer', desc: 'Id' }
      expose :title,     documentation: { type: 'String', desc: 'Title' }
      expose :content,   documentation: { type: 'String', desc: 'Content' }
    end
  end
end