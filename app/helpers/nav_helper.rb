module NavHelper
  def nav_tab (title, url, options = {})
    current_tab = options.delete(:current)
    options[:class] = (title[current_tab] != nil) ? 'active' : 'inactive'
    content_tag(:li, link_to(title, url), options)
  end

  def currently_at(tab)
    render partial: 'layouts/header', locals: {current_tab: tab}
  end
end

