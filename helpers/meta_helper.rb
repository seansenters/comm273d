def friendly_date(val)
  case val
  when Date, Time
    val.strftime '%B %d, %Y'
  when /^\d+/
    date = Chronic.parse(val)
    return date.strftime '%B %d, %Y'
  else
    return val
  end
end
