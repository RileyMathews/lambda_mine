# frozen_string_literal: true

require 'lambda_mine/version'

module LambdaMine
  def call(_event, _context)
    'hello from lambda mine!'
  end
end
