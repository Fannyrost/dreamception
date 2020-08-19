module ApplicationHelper
  def photo_for(experience)
    if experience.photo.attached?
      cl_image_path experience.photo.key, height: 200, width: 160, crop: :fill
    else
      image_path 'http://unsplash.it/400/400'
    end
  end
end
