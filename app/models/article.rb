class Article < ApplicationRecord
    has_one_attached :header_image
    has_many :comments, dependent: :destroy
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
