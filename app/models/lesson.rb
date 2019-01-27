# frozen_string_literal: true
class Lesson < ApplicationRecord
	self.table_name  = 'lessons'
	self.primary_key = 'id'

  belongs_to :category, optional: false

  validates :title,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 65 }

  validates :description,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 145 }

 	validates :content,
 						presence: true,
 						uniqueness: false,
 						allow_blank: false,
 						length: { minimum: 3, maximum: 2_000 }

  validates :video_path,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 245 }

  validates :tags,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 80 }
end
