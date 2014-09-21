def course_name(cslug)
#  cslug = article.metadata[:page]['course']
  cslug.upcase.sub('_', ' ')
end

def term_name(cslug)
#  cslug = article.metadata[:page]['term']
  cslug.split('_').reverse.join(' ').titleize
end


def friendly_schedule_date(d)
  _to_date(d).strftime('%A, %B %d')
end
