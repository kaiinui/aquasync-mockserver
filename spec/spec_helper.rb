require 'rspec'

ENV['RACK_ENV'] = "test"

require 'database_cleaner'
require 'active_support/core_ext'
require 'factory_girl'

require_relative 'factories/hoge'
require_relative 'factories/huga'

require_relative '../initializer/mongoid'

require_relative 'hoge'
require_relative 'huga'

require_relative '../lib/delta_pack_builder'
require_relative '../lib/delta_pack_unpacker'
require_relative '../aggregators/deltas_aggregator'

DatabaseCleaner.strategy = :truncation

def valid_hoge
  FactoryGirl.build :hoge
end

def valid_huga
  FactoryGirl.build :huga
end