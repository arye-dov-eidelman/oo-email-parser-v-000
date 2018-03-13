# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  def initialize(emails)
    @emails = emails
  end

  def parse
    if @emails.include?(',')
      parse_by_comma
    else if
      parse_by_space
    else
    remove_duplicates
    @emails
  end
  def parse_by_space
    @emails = @emails.split(' ').collect{ |i| i.strip}
  end
  def parse_by_comma
    @emails = @emails.split(', ').collect{ |i| i.strip}
    @emails = @emails.split(',').collect{ |i| i.strip}
  end
  def remove_duplicates
    @emails = @emails.uniq
  end
end
