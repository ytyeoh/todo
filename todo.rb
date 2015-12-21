require_relative 'config/application'
require_relative 'app/controllers/task'
require 'csv'

puts "Put your application code in #{File.expand_path(__FILE__)}"





class List
  def initialize
    # @arr = TaskController.list
    @input = ARGV

  end

  def list_all


    task = TaskController.list

    task.each_with_index { |task, i| puts "#{i+1}.\t#{task.name}"}
    # end
  end

  def delete

    task = TaskController.list

    task.each_with_index do |task, i|
      # "#{i+1}.\t#{task.id}"
      if i+1 == @input[1].to_i
        index = task.id
          TaskController.delete(index)
      end
    end


    # name = TaskController.name(index)

    # puts " Deleted #{name} from your TODO list"


    # i = @input[1]
    # index = @input[1].to_i - 1
    # if index <= @arr.length
    #   @arr.delete_at(index)
    #   CSV.open("todo.csv", "w+") do |csv|
    #     @arr.each do |x|
    #       csv << x
    #       end
    #   end
    #      Task.find(@input)
    # puts "Deleted #{@input.name} from your TODO list..."
    # else
    #   puts "No such number, please try again with correct number."
    # end
  end

  def add
      words = @input[1..-1].join(" ")

    TaskController.add(words)

    # @input.delete(@input[0])
    #   CSV.open("todo.csv", "w+") do |csv|
    #     @arr.each do |x|
    #     csv << x
    #     end
    #     csv << @input
    #   end
    #      puts "#{@input.join(" ")} input success!" #cannot show after update but delete method can show
    #      puts "type list to view whole list"
    puts "Appended  \"#{words}\" to your TODO list..."
  end
  # ...

  def complete
      task = TaskController.list

    task.each_with_index do |task, i|
      # "#{i+1}.\t#{task.id}"
      if i+1 == @input[1].to_i
        index = task.id
        name = "COMPLETE !!! [#{task.name}]"

          TaskController.complete(index, name)
        end
      end
      puts "Update complete!"
  end


end

#parse_method


list = List.new


@input = ARGV


 case
  when @input[0] == "list"
     list.list_all
  when @input[0] == "delete"
    list.delete
  when @input[0] == "add"
    list.add
  when @input[0] == "complete"
    list.complete
  else
  puts "No such command available."
  puts "Type 'list' to view all."
  puts "Type 'delete 3' to delete number you wish to delete."
  puts "Type 'add your words' to add in new words."
  end