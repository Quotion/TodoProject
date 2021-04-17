# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'active_support'

data = ActiveSupport::HashWithIndifferentAccess.new(YAML.load_file(File.open("db/seeds.yml")))

for layer in data[:projects]
    project = Project.new(title: layer[:title])
    for s_layer in layer[:todos]
        project.todo_projects << TodoProject.create(text: s_layer[:text], isCompleted: s_layer[:isCompleted])
    end
    project.save
end
