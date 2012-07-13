module ApplicationHelper

# title helper

  def title

    basetitle = "CMDB"
    if @title == nil
      basetitle
    else
      "#{basetitle} | #{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end

end
