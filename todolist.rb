class TodoList
    # methods and stuff go here
    attr_accessor :title, :items
    def initialize(list_title)
        @title = list_title
        @items = Array.new
    end

    def add_item(new_item, new_frequency, due)
        item = Item.new new_item, new_frequency, due
        @items.push item
    end

    def print_list
        puts "~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Title list: #{@title}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~"
        get_items
    end

    def get_items
        @items.each do |item|
            item.print_item
        end
    end


    def completed_status id
        item=@items[id]
        item.change_status
    end
    def completed? num
        @items[num].checking
    end

    def remove_items item
        @items.delete_at(item)
    end

end

class Item
    # methods and stuff go here
    attr_accessor :description, :completed_status

    @@number_of_id = 0
    def initialize item_description, item_frequency, due
        @ID = id_number
        @description = item_description
        @completed_status = false
        @frequency = item_frequency
        @due_date = due
    end
    def checking
        @completed_status
    end

    def change_status
        @completed_status = !@completed_status
    end

    def id_number
        @@number_of_id += 1
    end
    def print_item
        puts " #{@ID} #{@description} \t| #{@frequency} \t|#{@due_date} \t| Completed: #{@completed_status}"
        #puts " #{@ID} #{@description} \t| #{@frequency}  \t| Completed: #{@completed_status}"
    end


end
