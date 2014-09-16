module Admin::ProductsHelper

  def render_product_photo(photo)
    if photo.present?
      image_tag(photo.image.url, :class => "thumbnail", :size => "100x100")
    else
      "no pic"
    end
  end

end
