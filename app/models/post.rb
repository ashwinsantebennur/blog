class Post < ApplicationRecord
    belongs_to :author, class_name: "User"
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :body, presence: true
end
