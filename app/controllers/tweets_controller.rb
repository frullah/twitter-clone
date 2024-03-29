class TweetsController < ApplicationController
  before_action :set_tweet, only: %i[ show edit update destroy ]

  # GET /tweets
  def index
    @tweets = Tweet.all
  end

  # GET /tweets/1
  def show
  end

  # GET /tweets/new
  def new
    @tweet = Tweet.new
  end

  # GET /tweets/1/edit
  def edit
    render turbo_stream: turbo_stream.replace(
      ActionView::RecordIdentifier.dom_id(@tweet),
      partial: "form",
      locals: {tweet: @tweet}
    )
  end

  # POST /tweets
  def create
    @tweet = Tweet.new(tweet_params)

    if @tweet.save
      render turbo_stream: turbo_stream.prepend(
        "tweets",
        render_to_string(
          TweetCardComponent.new(
            tweet: @tweet,
            navigatable: true,
            class: "new-tweet"
          )
        )
      )
    else
      render status: :unprocessable_entity, turbo_stream: turbo_stream.replace(
        ActionView::RecordIdentifier.dom_id(@tweet),
        partial: "form",
        locals: {tweet: @tweet}
      )
    end
  end

  # PATCH/PUT /tweets/1
  def update
    if @tweet.update(tweet_params)
      redirect_to @tweet, notice: "Tweet was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /tweets/1
  def destroy
    @tweet.destroy
    render turbo_stream: turbo_stream.remove(
      ActionView::RecordIdentifier.dom_id(@tweet)
    )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweet_params
      params.fetch(:tweet, {}).permit(:content)
    end
end
