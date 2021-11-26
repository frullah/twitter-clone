# frozen_string_literal: true

class TweetCardComponent < ViewComponent::Base
  include Turbo::FramesHelper

  def initialize(tweet:, navigatable: false, **options)
    @tweet = tweet
    @navigatable = true
    @options = options
  end

  def before_render
    if @navigatable
      @options[:class] = "cursor-pointer hover:bg-light-300 #{@options[:class]}"
      @options[:data] ||= {}
      @options[:data][:controller] = "tweet #{@options[:data][:controller]}"
      @options[:data][:tweet_url_value] = url_for(@tweet)
      @options[:data][:action] = "click->tweet#openTweet #{@options[:data][:action]}"
    end
  end
end
