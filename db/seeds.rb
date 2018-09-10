Project.destroy_all
Client.destroy_all

Rake::Task['seed:clients'].invoke
Rake::Task['seed:projects'].invoke
