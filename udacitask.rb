require_relative 'todolist.rb'
#require 'table_print'

# Creates a new todo list
list1 = TodoList.new("Ruby studies")

# Add four new items

list1.add_item("Check forums for help","all day", {due: "11/04/2016"})
list1.add_item("read books about it","from time to time", {due: "11/04/2016"})
list1.add_item("check online courses","regularly", {due: "11/04/2016"})
list1.add_item("keep updated","hourly")
# Print the list
list1.print_list
# Delete the first item
list1

# Print the list
list1.print_list

# Delete the second item
list1.remove_by_id 1
# Print the list
list1.print_list
# Update the completion status of the first item to complete
#list1.items.completed_status = true
# Print the list
list1.print_list

# Update the title of the list
list1.title = "My new List"
# Print the list
list1.print_list

list1.show_items.find(1)
