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

  task engagements: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'engagements.csv')
    engagement = CSV.read(csv_path, headers: true)

    engagement.each do |p|
      project = Project.find_by(slug: p['Project Slug'])
      role = Role.find_by(slug: p['Role Slug'])
      Engagement.find_or_create_by!(project: project,
                                    role: role,
                                    code: p['Code'],
                                    slug: p['Slug'],
                                    name: p['Name'],
                                    start_date: p['Start Date'],
                                    end_date: p['End Date'])
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

  task staff_resources: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'staff_resources.csv')
    staff_resources = CSV.read(csv_path, headers: true)

    staff_resources.each do |p|
      grade = Grade.find_by(slug: p['Grade Slug'])
      StaffResource.find_or_create_by!(grade: grade,
                                       first_name: p['First Name'],
                                       last_name: p['Last Name'],
                                       display_name: p['Display Name'],
                                       slug: p['Slug'],
                                       email_address: p['Email Address'])
    end
  end

  task users: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'users.csv')
    users = CSV.read(csv_path, headers: true)

    users.each do |p|
      User.create!(first_name: p['First Name'],
                   last_name: p['Last Name'],
                   slug: p['Slug'],
                   email_address: p['Email Address'],
                   password: p['Password'])
    end
  end

  task staff_resource_skills: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'staff_resource_skills.csv')
    staff_resource_skills = CSV.read(csv_path, headers: true)

    staff_resource_skills.each do |p|
      staff_resource = StaffResource.find_by(slug: p['Staff Slug'])
      skill = Skill.find_by(slug: p['Skill Slug'])

      StaffResourceSkill.find_or_create_by!(staff_resource: staff_resource,
                                            skill: skill,
                                            level: p['Level'])
    end
  end

  task staff_resource_roles: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'staff_resource_roles.csv')
    staff_resource_roles = CSV.read(csv_path, headers: true)

    staff_resource_roles.each do |p|
      staff_resource = StaffResource.find_by(slug: p['Staff Slug'])
      role = Role.find_by(slug: p['Role Slug'])

      StaffResourceRole.find_or_create_by!(staff_resource: staff_resource,
                                           role: role,
                                           level: p['Level'])
    end
  end
end
