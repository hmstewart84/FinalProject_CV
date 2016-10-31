class EmploymentsController < Application Controller

  def index
    employments = Employment.all()
    render :json => employments.as_json(except: [:created_at, :updated_at])
  end

  def show
    employment = Employment.all()
    render :json => employment.as_json(except: [:created_at, :updated_at])
  end


end