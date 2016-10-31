class PersonsController < ApplicationController 

  def index
    persons = Person.all()
    render :json  => persons.as_json(include: [:educations, :employments, :skills], except: [:created_at, :updated_at])
  end

  def show
    person = Person.find(params[:id])
    render :json => person
  end

end