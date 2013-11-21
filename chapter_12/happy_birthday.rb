# Find out how old someone is born on Oct 1, 1984

birthday_in_secs = Time.new - Time.local(1984, 10, 1)
birthday_in_years = (birthday_in_secs / (60 * 60 * 24 * 365.25)).to_i

puts birthday_in_years.to_s + ' years old'