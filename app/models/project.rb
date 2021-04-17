class Project < ApplicationRecord
    has_many :todo_projects, inverse_of: :project
end
