desc "Import users." 
  task :import_users => :environment do
    File.open("users.txt", "r").each do |line|
      first_name, age, profession = line.strip.split("\t")
      u = User.create(first_name: first_name, age: age, profession: profession)
    end
  end