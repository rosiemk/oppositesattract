def export_data
  @coun = Country.all(:limit => 10)
  header = "name,country_code,destination,code"
  file = "my_file.csv"
  File.open(file, "w") do |csv|
    csv << "/n"
    @coun.each do |c|
      csv << [c.name, c.country_code, c.user_id, c.subscriber_id]       
      # How puts line break here
    end
  end
  send_file(file)
end