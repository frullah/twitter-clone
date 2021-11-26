# frozen_string_literal: true

class TweetCardComponent < ViewComponent::Base
  include Turbo::FramesHelper

  def initialize(tweet:)
    @tweet = tweet
  end
end
