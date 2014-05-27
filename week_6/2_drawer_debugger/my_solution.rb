# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

  attr_reader :contents

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item( item )
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing? 
  	# pop is pulling the last item off the array of contents if no item passed and item is set to that.
  	# puts item
  	# puts @contents

    @contents.delete(item) # delete the matching item from the contents if it is still there.

    # puts @contents
    return item # added this line to return the id of the item removed
  end

  def dump  # what should this method return? nothing or nil
    puts "Your drawer is empty."
    @contents = [] # added this line to actually empty the contents
  end

  def view_contents
    puts "The drawer contains:"
      @contents.each {|silverware| puts "- " + silverware.type }
    puts "- Nothing" if @contents == []
  end
end

class Silverware
  attr_reader :type, :clean

  # Are there any more methods needed in this class? No, added the clean attribute reader.

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{@type}"
    @clean = false
  end

  def clean_silverware
  	@clean = true
  end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? No items should be printed. Changed the code to say nothing.

fork = Silverware.new("fork") # This line is needed to get the fork to work
silverware_drawer.add_item(fork)  # This line is needed to get the fork to work
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
puts fork.clean # the clean attribute needed to have and attribute reader in the class.

# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

spoon_new = Silverware.new("spoon") 
silverware_drawer.add_item(spoon_new)
assert { silverware_drawer.contents[0] == spoon_new } # is our spoon in the drawer the one we put in?
spoon = silverware_drawer.remove_item(spoon_new)
assert { spoon.clean } # is our retreived spoon clean?
assert { silverware_drawer.contents == [] } # is the drawer empty now?




# 5. Reflection 


