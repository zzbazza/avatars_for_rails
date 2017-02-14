class AvatarsController < ApplicationController
  # Apply the filters configured in avatars_for_rails initializer
  AvatarsForRails.controller_filters.each do |filter|
    before_action filter
  end

  def update
    @avatarable = current_avatarable
    current_avatarable.assign_attributes avatarable_params
    if avatarable_params[:avatar_crop_x].present?
      current_avatarable.remote_avatar_url = current_avatarable.avatar.url
    end
    if current_avatarable.save
      respond_to do |format|
        format.html { redirect_to request.referrer || root_path }
        format.json { render json: { crop: render_to_string(partial: 'crop.html', object: current_avatarable, as: :avatarable) }.to_json }
      end
    else
      render json: current_avatarable.errors.to_json
    end
  end

  def destroy
  end

  private

  def current_avatarable
    send AvatarsForRails.controller_avatarable
  end

  def avatarable_params
    params
        .require(current_avatarable.class.to_s.underscore)
        .permit(:avatar,
                :avatar_crop_x,
                :avatar_crop_y,
                :avatar_crop_w,
                :avatar_crop_h)
  end
end
