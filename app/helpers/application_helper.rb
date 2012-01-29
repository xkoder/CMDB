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

end
