class Topic < ActiveRecord::Base

  has_many :subtopics
  has_many :podcasts, through: :podcasts_topics
  has_many :podcasts_topics
  
end