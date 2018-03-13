# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  def initialize(emails)
    @emails = emails
  end

  def parse
    parse_by_comma_and_space.uniq
  end
  def parse_by_space
    @emails.split(' ').collect{ |i| i.strip}
  end
  def parse_by_comma
    @emails.split(',').collect{ |i| i.strip}
  end
  def parse_by_comma_and_space
    @emails.split(/(,| )(,| )*/)#.select{|i| i != ' ' && i != ',' && i != ''}.collect{ |i| i.strip}
  end
end
