# frozen_string_literal: true

class Registrations::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      if params[:user][:photo].present?
        upload = Cloudinary::Uploader.upload(params[:user][:photo])
        resource.update(photo: upload['secure_url'])
      end
    end
  end
end
