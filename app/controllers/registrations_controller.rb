class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
  	super
  	@user.create_walker
  	@user.create_owner
  end

  def update
    super
  end
end 
