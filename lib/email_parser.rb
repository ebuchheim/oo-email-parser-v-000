# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

    def initialize(emails)
        @emails = emails
    end

    def parse
        rows = @emails.split(/,\s|\s/)
        emails_list = []
        rows.each do |row|
            address = row.split(/,\s|\s/)
            if !emails_list.include?(address[0])
                emails_list << address[0]
            end
        end
        emails_list
    end

end
