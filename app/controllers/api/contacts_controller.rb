class Api::ContactsController < ApplicationController
  def index
    p 'current user'
    p current_user
    p '*' * 50
    if current_user
      group = Group.find_by(name: params[:group_name])
      @contacts = group.contacts
      @contacts = @contacts.where(user_id: current_user.id)
    else
      @contacts = []
    end
    render 'index.json.jbuilder'
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render 'show.json.jbuilder'
  end

  def create
    @contact = Contact.new(
      user_id: current_user.id,
      first_name: params[:input_first_name],
      middle_name: params[:input_middle_name],
      last_name: params[:input_last_name],
      email: params[:input_email],
      phone_number: params[:input_phone_number],
      bio: params[:input_bio]
    )
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
    @contact.phone_number = params[:input_phone_number]
    @contact.bio = params[:input_bio]
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
