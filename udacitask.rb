require_relative 'todolist.rb'
#require 'table_print'

# Creates a new todo list
list1 = TodoList.new("Ruby studies")

# Add four new items

list1.add_item("read an article","once per day", "11/04/2016")
list1.add_item("watch online tutorials","from time to time", "11/04/2016")
list1.add_item("keep updated with trends on ruby","daily",  "11/05/2016")
list1.add_item("ask questions on forums","daily", "22/02/2017")
# Print the list
list1.print_list
# Delete the first item
list1.remove_items 0

# Print the list
list1.print_list

# Delete the second item
list1.remove_items 0
# Print the list
list1.print_list
# Update the completion status of the first item to complete
list1.completed? 0

list1.completed_status 0
# Print the list
list1.print_list

# Update the title of the list
list1.title = "My new List"
# Print the list
list1.print_list


#file = File.open("report.txt", w+)
#file.each do |line|

#puts line
#end


