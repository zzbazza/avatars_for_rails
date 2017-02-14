require 'carrierwave'
require 'mini_magick'
require 'jquery-rails'
require 'jquery-ui-rails'

module AvatarsForRails
  autoload :Avatarable, 'avatars_for_rails/avatarable'

  # Filters to run before updating the avatar
  mattr_accessor :controller_filters
  @@controller_filters = [:authenticate_user!]

  # The method to get the avatarable in the controller
  mattr_accessor :controller_avatarable
  @@controller_avatarable = :current_user

  class << self
    def setup
      yield self
    end
  end
end

require 'avatars_for_rails/engine'
