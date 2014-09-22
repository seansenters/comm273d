def page_title
  if (t = current_page.data.title)
    t.to_s + " | " + config[:site_title]
  else
    config[:site_title]
  end
end

def page_description
  current_page.data.description || config[:site_description]
end
