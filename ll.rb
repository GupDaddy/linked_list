class LinkedListNode
  attr_accessor :firstNodeValue, :secondNodeValue

  def initialize(firstNodeValue, secondNodeValue=nil)
    @firstNodeValue = firstNodeValue
    @secondNodeValue = secondNodeValue
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a firstNode onto the stack
    def push(firstNodeValue)
        @data = LinkedListNode.new(firstNodeValue, @data)
    end

    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
    	if @data.nil?
    		nil
     	else	
       	@data = @data.secondNodeValue
       	firstNode = @data.firstNodeValue
     	return firstNodeValue
     end
	end
end

def print_values(list_node)
  if list_node
    print "#{list_node.firstNodeValue} --> "
    print_values(list_node.secondNodeValue)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list)
    
	stack = Stack.new

    while list
    	stack.push(list.firstNodeValue)
        list = list.secondNodeValue
    end

    return stack.data
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
print_values(node3)

puts "-------"

 revlist = reverse_list(node3)
 print_values(revlist)