class TodoList
    # methods and stuff go here
    attr_accessor :title, :items
    def title
    @title
    end

    def items
    @items
    end

    def initialize(list_title)
        @title = list_title
        @items = Array.new
    end

    def add_item(new_item, new_frequency, options = {})
        item = Item.new new_item, new_frequency
        @items.push item
    end

    def print_list
        puts "~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Title list: #{@title}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~"
        print_items
    end

    def print_items
        @items.each do |item|
            item.print_each_item
        end
    end

    def remove_by_id(item)
        l = item + 1
        s = item - 1
        items = @items[s..l]
        @items-items
    end

    def completed_status completed
        find 
        @Complete_status = completed
    end

    def show_items
        puts @items
    end

end

class Item
    # methods and stuff go here
    attr_accessor :description, :completed_status

    @@number_of_id = 0
    def initialize item_description, item_frequency, options = {}
        
        @ID = id_number
        @description = item_description
        @completed_status = false
        @frequency = item_frequency
        @due_date = options[:due]|| "within this month"
        
    end

    def id_number
        @@number_of_id += 1
    end
    def print_each_item
        puts " #{@ID} #{@description} \t| #{@frequency} \t|#{@due_date} \t| Completed: #{@completed_status}"
        #puts " #{@ID} #{@description} \t| #{@frequency}  \t| Completed: #{@completed_status}"
    end


end
