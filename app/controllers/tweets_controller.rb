class TweetsController < ApplicationController

    before_action :authenticate_user!

    def index
        @tweets = Tweet.all
    end

    def new
        @tweet = Tweet.new
    end

    def create
        tweet = Tweet.new(tweet_params)
        tweet.user_id = current_user.id
        tweet_count = Tweet.where(user_id: tweet.user_id).count
      
       if tweet.valid?
          if tweet_count < 1
             tweet.save
             redirect_to :action =>"index", notice: "Your post was successful"
          else
             redirect_to :action =>"new", notice: "You have already posted. If you delete your post, you can post again"
          end
       else
          flash.now[:alert] = "You cannot post"
          render :new
       end
    end


    def show
        @tweet = Tweet.find(params[:id])
    end

    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to user_path(current_user.id)
    end
 
    private
    def tweet_params
      params.require(:tweet).permit(:body, :img)
    end

end
