require 'csv'

namespace :seed do
  task clients: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'clients.csv')
    clients = CSV.read(csv_path, headers: true)

    clients.each do |p|
      Client.find_or_create_by!(name: p['Name'],
                                slug: p['Slug'],
                                code: p['Code'])
    end
  end
end
