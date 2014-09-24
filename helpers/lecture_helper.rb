def course_name(cslug)
#  cslug = article.metadata[:page]['course']
  cslug.upcase.sub('_', ' ')
end

def get_lecture_data(data_lectures, course_slug, lecture_date)
  data_lectures[course_slug].andand[date_slug(lecture_date)] || Hash.new{|h, k| h[k] = []}
end

def term_name(cslug)
#  cslug = article.metadata[:page]['term']
  cslug.split('_').reverse.join(' ').titleize
end


def friendly_schedule_date(d)
  _to_date(d).strftime('%A, %B %-d')
end
