require_relative '../../config/application'
class TaskController



  def self.list
    Task.all
  end

  def self.delete(id)
   Task.delete(id)
  end

  def self.find(id)
    Task.find(id)
  end

  def self.add(words)
    Task.create(:name => words)
  end

  def self.name(id)
    Task.find(id).select(:name)
  end

  def self.complete(id, done)
    x= Task.find(id)
    x.name = done
    x.save
  end
end


  #        list_all
  #   else
  #     puts "No such number, please try again with correct number."
  #   end
  # end