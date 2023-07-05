# frozen_string_literal: true

class ContactsController < ApplicationController

  def contact_params
    params.require(:contact).permit(:name, :phone_number)
  end

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact, notice: 'Contact was successfully created.'
    else
      render :new
    end
  end
end
