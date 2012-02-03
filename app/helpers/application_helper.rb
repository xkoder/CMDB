module ApplicationHelper

# title helper

  def title

    basetitle = "StaticPages"
    if @title == nil
      basetitle
    else
      "#{basetitle} | #{@title}"
    end
  end

  def logo
    link_to image_tag("logo.png", :alt => "Sample App", :class => "round")
  end

end
