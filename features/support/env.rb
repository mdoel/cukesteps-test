# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] ||= "test"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'
require 'cucumber/formatter/unicode' # Comment out this line if you don't want Cucumber Unicode support
Cucumber::Rails.use_transactional_fixtures
Cucumber::Rails.bypass_rescue # Comment out this line if you want Rails own error handling 
                              # (e.g. rescue_action_in_public / rescue_responses / rescue_from)

puts "Brand has #{Brand.methods.size} methods at 1"
brand_methods = Brand.methods.sort

require 'webrat'
require 'cukesteps'

Webrat.configure do |config|
  config.mode = :rails
end

require 'cucumber/rails/rspec'
require 'webrat/core/matchers'

puts "Brand has #{Brand.methods.size} methods at 2"
current_brand_methods = Brand.methods.sort
puts "Methods added are #{current_brand_methods - brand_methods}"
brand_methods = current_brand_methods

include FixtureReplacement
include CukeAssociationHelpers

cuke_association_builders(:brand => :build_associated_via_find_by_name,
                        :location => :from_factory)

puts "Brand has #{Brand.methods.size} methods at 3"
current_brand_methods = Brand.methods.sort
puts "Methods added are #{(current_brand_methods - brand_methods).join(" ")}"
brand_methods = current_brand_methods


