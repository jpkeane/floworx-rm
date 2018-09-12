StaffResource.destroy_all
Project.destroy_all
Client.destroy_all
Grade.destroy_all
Role.destroy_all
Skill.destroy_all

Rake::Task['seed:skills'].invoke
Rake::Task['seed:roles'].invoke
Rake::Task['seed:grades'].invoke
Rake::Task['seed:clients'].invoke
Rake::Task['seed:projects'].invoke
Rake::Task['seed:staff_resources'].invoke
