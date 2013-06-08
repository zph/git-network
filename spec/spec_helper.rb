require 'vcr'
require 'webmock'
require_relative '../lib/git-network'

VCR.configure do |c|
  c.cassette_library_dir = File.join(File.dirname(__FILE__), 'cassettes')
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.filter_sensitive_data('<ACCESS_TOKEN>') {ENV['GH_NETWORK']}
end

RSpec.configure do |c|
  c.treat_symbols_as_metadata_keys_with_true_values = true
end
