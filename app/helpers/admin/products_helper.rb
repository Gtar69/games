module Admin::ProductsHelper

  def render_product_photo(photo)
    if photo.present?
      image_tag(photo.image.url, :class => "thumbnail", :size => "200x150")
    else
      #placeholder for 4 by 4 gird
      image_tag("http://placehold.it/200x150",:class => "thumbnail")
    end
  end

end