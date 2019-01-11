require 'date'
require 'time'
class Task
  attr_reader :description, :type
  attr_accessor :recuring_date, :complete, :task, :due_date

  def initialize (title, description, date="", type="task")
  # name of task
    @title = title

  # description of task
    @description = description
  # when the task is due, not maditory, must be a date
  # we need to fix to get due date by month, date, year
    @due_date = date
    # @due_date = Date.strptime(due_date, '%m/%d/%y')
  # true/false if complete or not
    @complete = false
  # if regular task or if its an anniversary
    @type = type
  # # recuring date field.  only for anniversary, must be date
    @recuring_date = ""
  end
  def title
    @title
  end
  # def due_date
  #   @due_date
  #    # "#{@due_date.month}/#{@due_date.day}/#{@due_date.year}"
  # end
  def change_status new_status
    if new_status == "done"
      @complete = true
    elsif new_status == "incomplete"
      @complete = false

    end
  end
  def info
    "title: #{@title}.  Description: #{@description}. Type : #{@type},  Complete by: #{
    if @type=="task"
      @due_date
    else
      @recuring_date + "/"+Date.today.year.to_s[-2..-1]
    end
    }.  Current Status: #{
    if @complete
      "complete"
    else
      "incomplete"
    end}"
  end
  def add_recuring_date new_date
    if recuring_date == "" and type == "anniversary"
      @recuring_date = new_date
    elsif recuring_date !="" and type =="anniversary"
      "Recuring date is already set. No recuring date has been added"
    else
      "Task type is not anniversary. No recuring date has been added"
    end
  end

  def add_due_date new_date
    if due_date == "" and type == "task"
      @due_date = new_date
    elsif due_date !="" and type =="task"
      "Due date is already set. No due date has been added"
    else
      "Task type is not task. No due date has been added"
    end
  end

  def update_recuring_date new_date
    # puts new_date
    # puts recuring_date
    if type == "anniversary"
      @recuring_date = new_date
      # puts recuring_date
    else
      "Task type is not anniversary"
    end
  end
  def update_due_date new_date
    if type == "task"
      @due_date = new_date
    else
      "Task type is not task"
    end
  end
end

class DueDateTask < Task
  def initialize title, description, date="", type="task"
    super
    @due_date = date
    @type = type
    @recuring_date=""
    # @title = title
    # @description = description
  end
end

class Anniversary < Task
  def initialize title, description, date, type="anniversary"
    super
    @due_date =""
    @recuring_date = date
    @type = type
  end

end

class Task_list
  attr_accessor :owner, :list
  def initialize (owner)
# the user.
    @owner = owner
    @list = []
  end
  def add_task new_task
    @list << new_task
  end
  def completed_task current_status
    @list.each {|x| p x if x.complete == current_status}
# code below, is equivilant to line aboveß
    # if current_status
    #   @list.each {|x| p x if x.complete }
    # else
    #   @list.each {|x| p x if !x.complete }
    # end
  end
  def due_today
    @list.each { |x|
      if x.type == "task"
        new_date = x.due_date
      else
        new_date = x.recuring_date + "/"+Date.today.year.to_s[-2..-1]
      end
      # puts x.recuring_date, new_date
      if x.complete == false && Date.strptime(new_date, "%m/%d/%y") == Date.today
        p x
      end
    }
  end
  def due_list
    @list.each { |x|
      if x.type == "task"
        new_date = x.due_date
      else
        new_date = x.recuring_date + "/"+Date.today.year.to_s[-2..-1]
      end
      # puts x.recuring_date, new_date
      if x.complete == false && Date.strptime(new_date, "%m/%d/%y") >= Date.today
        p a=x.each{|x| x.due_date=new_date}
      end
    }
  end

end

# my_task_1 = Task.new('buy groceries', 'get food', "01/10/19")
# my_task_2 = Task.new('fix due date', 'find due date function', "2/1/19")
# my_task_3 = Task.new('wedding', 'get present')

# my_task_1.add_recuring_date('2/13')
# p my_task_1
# my_task_3.add_recuring_date('5/4')
# p my_task_3

my_task_list = Task_list.new('Daniel')
# my_task_list.add_task(my_task_1)
# my_task_list.add_task(my_task_2)
# my_task_list.add_task(my_task_3)

my_due_task_1 = DueDateTask.new('study', 'learn tensorFlow', '02/20/19')

my_due_task_2 = DueDateTask.new('work out', 'run', '02/21/19')

my_due_task_3 = DueDateTask.new('sleep', 'during lunch')
my_ann_task_1 = Anniversary.new('wedding', 'prepare present', '01/20',"anniversary")
my_ann_task_2 = Anniversary.new('Left Army', 'celebrate', '10/1',"anniversary")

my_ann_task_3 = Anniversary.new('Mothers Birthday', 'call her', '03/1')

my_task_list.add_task(my_due_task_1)
my_task_list.add_task(my_due_task_2)
my_task_list.add_task(my_due_task_3)
my_task_list.add_task(my_ann_task_1)
my_task_list.add_task(my_ann_task_2)
my_task_list.add_task(my_ann_task_3)


my_due_task_3.add_due_date('01/10/19')

my_due_task_2.change_status('done')
my_ann_task_3.change_status('done')
my_ann_task_2.update_recuring_date('1/10')

# my_task_list.completed_task(true)
# puts ""
# my_task_list.completed_task(false)

my_ann_task_2.change_status('done')


# my_task_list.due_today
my_task_list.due_list
# p Date.today
# p Date.strptime('01/10/19', "%m/%d/%y")
# p my_task_list
# p Date.today == Date.strptime('01/10/19', "%m/%d/%y")
# p my_due_task_1.add_recuring_date('3/5')
# p my_ann_task_1.add_recuring_date('5/5')
# p my_ann_task_2.add_recuring_date('6/5')
# p my_due_task_1.info
# my_due_task_1.change_status("done")
# p my_due_task_1.info
# my_due_task_1.change_status("incomplete")
# p my_due_task_1.info
# p my_ann_task_1.info

# p my_task_1.title
# p my_task_1.description
# p my_task_1.due_date
# p my_task_1.info
# p my_task_list
# p my_task_3
