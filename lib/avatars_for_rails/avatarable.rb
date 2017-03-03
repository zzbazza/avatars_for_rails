module AvatarsForRails
  module Avatarable
    extend ActiveSupport::Concern

    included do
      attr_accessor :avatar_crop_x, :avatar_crop_y, :avatar_crop_w, :avatar_crop_h
      mount_uploader :avatar, ::AvatarUploader

      def remote_avatar_url=(val)
        val = URI.decode(val) if val
        super(val)
      end
    end
  end
end
