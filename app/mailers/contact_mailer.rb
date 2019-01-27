# frozen_string_literal: true
class ContactMailer < ApplicationMailer

  default from: 'contact@envlabs.com.br'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sended.subject
  #
  def sended(contact)
    @contact = contact
    mail({
      to: contact.email,
      subject: "#{contact.name}, EnvLabs agradece pelo seu contato."
    })
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.received.subject
  #
  def received(contact)
    @contact = contact
    mail({
      to: 'contato@envlabs.com.br',
      subject: "Novo e-mail enviado por #{contact.name}."
    })
  end
end
