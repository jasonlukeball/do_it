namespace :todo do

  desc "Delete items older than seven days"

  task delete_items_older_than_7_days: :environment do
    Todo.where("created_at <= ?", Time.now - 7.days).destroy_all
  end

end
