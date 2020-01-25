class Disqux < ApplicationRecord
    belongs_to :projects, optional: true
end
