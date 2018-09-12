Project.destroy_all
Client.destroy_all
Grade.destroy_all

Rake::Task['seed:grades'].invoke
Rake::Task['seed:clients'].invoke
Rake::Task['seed:projects'].invoke
