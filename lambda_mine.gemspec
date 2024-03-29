# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lambda_mine/version'

Gem::Specification.new do |spec|
  spec.name          = 'lambda_mine'
  spec.version       = LambdaMine::VERSION
  spec.authors       = ['Riley Mathews']
  spec.email         = ['rileymathews80@gmail.com']

  spec.summary       = '"Testing out what can happen with third party packages in AWS lambda"'
  spec.homepage      = 'https://github.com/RileyMathews/lambda_mine'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/RileyMathews/lambda_mine'
  spec.metadata['changelog_uri'] = 'https://github.com/RileyMathews/lambda_mine/changelog.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'solargraph'
end
