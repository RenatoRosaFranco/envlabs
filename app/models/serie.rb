# frozen_string_literal: true
class Serie < ApplicationRecord
	self.table_name  = 'series'
	self.primary_key = 'id'
	
  belongs_to :category
end
