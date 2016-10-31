class EducationsController < ApplicationController 

  def index
    educations = Education.all()
    render :json => educations.as_json(except: [:created_at, :updated_at])
  end

  def show
    education = Education.all()
    render :json => education
  end

end