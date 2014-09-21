def page_title
  if (t = data.page.title)
    t.to_s + " | " + config[:site_title]
  else
    config[:site_title]
  end
end

def page_description
  data.page.description || config[:site_description]
end
