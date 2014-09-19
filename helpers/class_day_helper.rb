def course_name(article)
  cslug = article.metadata[:page]['course']
  cslug.upcase
end

def term_name(article)
  cslug = article.metadata[:page]['term']
  cslug.split('_').reverse.join(' ').titleize
end


def friendly_class_date(d)
  _to_date(d).strftime('%A, %B %d')
end
