# frozen_string_literal: true

require 'lambda_mine/version'

module LambdaMine
  class Handler
    def self.process(event:, context:)
      'hello from lambda mine!'
    end
  end
end
