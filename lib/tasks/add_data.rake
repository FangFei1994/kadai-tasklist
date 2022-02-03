
# refer: https://qiita.com/yoshito410kam/items/26c3c6e519d4990ed739
# rake add_data:from_csv
require 'csv'

namespace :add_data do
    task from_csv: :environment do
        CSV.open('./users.csv') do |c|
            u = User.new(username: c[0], password: c[1])
            u.save!
        end
    end
end
