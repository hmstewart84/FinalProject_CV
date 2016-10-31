class SkillsController < ApplicationController

  def index
    skills = Skill.all()
    render :json => skills.as_json(except: [:created_at, :updated_at])
  end

  def show
    skill = Skill.all()
    render :json => skill.as_json(except: [:created_at, :updated_at])
  end

end