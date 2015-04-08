module API::V1
  class Posts < API::V1::Base
    
    resource :posts do

      paginate per_page: 20, max_per_page: 30

      desc "Returns a list of all posts", entity: API::Entities::Post
      params do
        optional :page, type: String, desc: 'Page Number'
      end

      get do 
        present paginate(Post.all.order('created_at DESC')), with: API::Entities::Post
      end

   
    ########POST 
      desc "Create a new post", entity: API::Entities::Post
      params do
        requires :access_token, type: String, desc: 'Access Token'
        optional :post, type: Hash do
          requires :title,      type: String, desc: 'Title'
          requires :content,    type: String, desc: 'Content'
        end
      end

      post do
        @post = current_user.posts.create(params[:post])
        if @post.valid?
          present @post, with: API::Entities::Post, current_user: current_user
        else
          error!(@post.errors.full_messages, 422)
        end
      end
      

      
    end
  end
end

