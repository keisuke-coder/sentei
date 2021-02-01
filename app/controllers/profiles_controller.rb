class ProfilesController < ApplicationController
  def index 
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create  
    @profile = Profile.create(profile_params)
    @profile.user_id = current_user.id
    if @profile.save
      redirect_to root_path
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.update(profile_params)
    redirect_to profile_params
  end
  
  private
  def profile_params
    params.require(:profile).permit(:company, :name, :employee_num, :start_time, :ending_time, :regular_holiday, :tel, :first_postal_code, :last_postal_code, :address, :explanation)
  end
end
