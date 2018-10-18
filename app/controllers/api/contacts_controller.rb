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
    @contact = Contact.new(first_name: params[:input_first_name], middle_name: params[:input_middle_name], last_name: params[:input_last_name], email: params[:input_email], phonenumber: params[:input_phonenumber])
    @contact.save
    render 'show.json.jbuilder'
  end

  def update
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.first_name = params[:input_first_name]
    @contact.middle_name = params[:input_middle_name]
    @contact.last_name = params[:input_last_name]
    @contact.email = params[:input_email]
    @contact.phonenumber = params[:input_phonenumber]
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
