class EmailParser
  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.split(/[ ,][ ]*/).uniq
  end
end
