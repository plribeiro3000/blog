class Entry < ActiveRecord::Base
  belongs_to :user

  validates :content, presence: true
  validates :title, presence: true
end