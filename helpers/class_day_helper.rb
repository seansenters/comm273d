def course_name(article)
  cslug = article.metadata[:page]['course']
  cslug.upcase
end

def term_name(article)
  cslug = article.metadata[:page]['term']
  cslug.split('_').reverse.join(' ').titleize
end
