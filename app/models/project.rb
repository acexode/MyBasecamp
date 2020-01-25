class Project < ApplicationRecord
    enum role: [:standard, :admin]
    has_one_attached :banner
    has_many_attached :uploads
    belongs_to :user
    has_many :users
    has_many :disquxes, dependent: :destroy

    after_initialize do
        if self.new_record?
          self.role ||= :admin
        end
      end
end
