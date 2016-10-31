class Person < ActiveRecord::Base
  has_many(:educations)
  has_many(:employments)
  has_many(:skills)
end
