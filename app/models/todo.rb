  require_relative '../../config/application'
require 'date'

class Todo < ActiveRecord::Base


  validates_uniqueness_of :name, message: 'Task is already on the list.'

# def self.find(id)
#     Task.find(id)
#   end

#   def self.all
#     Task.all
#   end

#   def self.create(task)
#     t = Task.new
#     t.name = task
#     t.save
#   end

#   def self.delete(id)
#     Task.delete(id)

#   end

#   def self.name(id)
#    Task.where(id: id ).select(:name)

  end
end
