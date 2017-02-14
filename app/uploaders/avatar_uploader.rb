# frozen_string_literal: true
class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  process :crop

  def default_url(*args)
    'default_avatar.jpg'
  end

  def crop
    return if model.avatar_crop_x.blank?

    manipulate! do |img|
      width  = img.width
      height = img.height

      crop_x = (model.avatar_crop_x.to_f * width).round
      crop_y = (model.avatar_crop_y.to_f * height).round
      crop_w = (model.avatar_crop_w.to_f * width).round
      crop_h = crop_w / 1 # Aspect ratio

      img.combine_options do |i|
        i.crop("#{crop_w}x#{crop_h}+#{crop_x}+#{crop_y}")
        i.thumbnail '100>x100>'
      end
    end
  end

  protected

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
