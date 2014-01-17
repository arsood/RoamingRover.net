class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
  	super
    if not current_user.nil?
  	 current_user.create_walker
  	 current_user.create_owner
    end
  end

  def update
    super
  end
end 
