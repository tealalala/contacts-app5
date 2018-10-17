class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render 'show.json.jbuilder'
  end

  def create
    @contact = Contact.new(first_name: "y", last_name: "u", email: "i", phonenumber: "o")
    @contact.save
    render 'show.json.jbuilder'
  end

  def update
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.first_name = "d"
    @contact.last_name = "f"
    @contact.email = "g"
    @contact.phonenumber = "j"
    @contact.save
    render 'show.json.jbuilder'
  end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.destroy
    render 'destroy.json.jbuilder'
  end
end
