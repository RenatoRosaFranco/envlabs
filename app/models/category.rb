# frozen_string_literal: true
class Category < ApplicationRecord
  self.table_name  = 'categoires'
  self.primary_key = 'id'

  belongs_to :category, optional: true

  validates :name,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 50 }

 	validates :description,
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
