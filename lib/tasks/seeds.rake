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

  task projects: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'projects.csv')
    project = CSV.read(csv_path, headers: true)

    project.each do |p|
      client = Client.find_by(slug: p['Client Slug'])
      Project.find_or_create_by!(client: client,
                                 name: p['Name'],
                                 code: p['Code'],
                                 slug: p['Slug'])
    end
  end

  task grades: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'grades.csv')
    grades = CSV.read(csv_path, headers: true)

    grades.each do |p|
      Grade.find_or_create_by!(name: p['Name'],
                               slug: p['Slug'],
                               level: p['Level'])
    end
  end

  task roles: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'roles.csv')
    roles = CSV.read(csv_path, headers: true)

    roles.each do |p|
      Role.find_or_create_by!(name: p['Name'],
                              slug: p['Slug'])
    end
  end

  task skills: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'skills.csv')
    skills = CSV.read(csv_path, headers: true)

    skills.each do |p|
      Skill.find_or_create_by!(name: p['Name'],
                               slug: p['Slug'])
    end
  end
end
