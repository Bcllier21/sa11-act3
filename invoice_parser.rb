def parse_invoices(invoice_data) 
    pattern = /(\d{4}\S\d{2}\S\d{2}).{3}([A-Z]{3}\d{3}).{3}(\w+\s\w+).{3}(\W\d{4})/
    entry = invoice_data.scan(pattern)
    (0...entry.length()).each do |i|
       print("Date: ",entry[i][0], ", Invoice Number: ",entry[i][1], 
       ", Client: ",entry[i][2], ", Amount: ",entry[i][3], "\n")
    end
end 
 
invoice_entries = "<<-INVOICES 
2023-03-01 - INV001 - Acme Corp - $1000 
2023-03-02 - INV002 - Beta LLC - $2050 
2023-03-03 - INV003 - Gamma Inc - $3500 
INVOICES"
 
parse_invoices(invoice_entries) 