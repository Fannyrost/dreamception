module ApplicationHelper
  def photo_for(experience)
    if experience.photo.attached?
      cl_image_path experience.photo.key
    else
      image_path 'http://unsplash.it/1200/800'
    end
  end
end
