class Agenda < ActiveRecord::Base
  attr_accessible :content, :date, :end_time, :event, :start_time
end
