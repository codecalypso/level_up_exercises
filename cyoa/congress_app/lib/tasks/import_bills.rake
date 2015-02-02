namespace :bills do
  desc "imports bills api data into database"
  task :import => :environment do
    Congress.key = "1dec920d92b44e9b9219e925a987267c"
    Congress.bills["results"].each do |bill|
      database_bill = Bill.find_or_initialize_by(bill_type: bill["bill_type"], number: bill["number"], congress: bill["congress"])
        database_bill.official_title= bill["official_title"]
        database_bill.chamber = bill["chamber"]
        database_bill.introduced_on = bill["introduced_on"]
        database_bill.last_action_on = bill["last_action_on"]
        database_bill.last_vote_at = bill["last_vote_at"]
        database_bill.last_version_on = bill["last_version_on"]
        database_bill.save
    end
  end
end