# frozen_string_literal: true
class Contact 
	include ActiveModel::Conversion
	include ActiveModel::Validations

	attr_accessor :name, :phone, :email,  :subject, :message

	def initialize(params = {})
		@name    = params[:name]
		@phone   = params[:phone]
		@email   = params[:email]
		@subject = params[:subject]
		@message = params[:message]
	end

	def persisted?
		false
	end

	def send_email
		ContactMailer.sended(self).deliver_now
		ContactMailer.received(self).deliver_now
	end

  validates :name,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 30 }

  validates :phone,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 25 }

  validates :email,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 245 }

  validates :subject,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 50 }

  validates :message,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 4_000 }
end
