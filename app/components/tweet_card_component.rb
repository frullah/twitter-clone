# frozen_string_literal: true

class TweetCardComponent < ViewComponent::Base
  def initialize(tweet:)
    @tweet = tweet
  end
end
