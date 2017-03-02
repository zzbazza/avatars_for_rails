class AvatarsController < ApplicationController
  respond_to :html

  AvatarsForRails.controller_filters.each do |filter|
    before_action filter
  end

  def update
    current_avatarable.update_attributes avatarable_params
    respond_with current_avatarable, location: request.referrer
  end

  def destroy; end

  private

  def current_avatarable
    send AvatarsForRails.controller_avatarable
  end

  def avatarable_params
    params.require(current_avatarable.class.to_s.underscore)
          .permit(:avatar,
                  :avatar_crop_x,
                  :avatar_crop_y,
                  :avatar_crop_w,
                  :avatar_crop_h,
                  :remote_avatar_url)
  end
end
