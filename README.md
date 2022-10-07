# jungle_beats

## Iteration 0 - Node Basics
Our Linked List will ultimately be composed of individual nodes, so in this iteration we’ll start with building out these nodes. Note that they are quite simple – a Node simply needs to have a slot for some data and a slot for a “next node”. Eventually this next_node position will be what we use to link the multiple nodes together to form the list.

For this iteration, build a simple node class that can perform these functions:

> require "./lib/node"
> node = Node.new("plop")
> node.data
=> "plop"
> node.next_node
=> nil

------

# Iteration 1 - Append, To String, and Count (Single Node / Element)

Great! We have nodes. In this iteration we’ll create the LinkedList class and start filling in the basic functionality needed to append our first node.

We’ll be adding the following methods:

append - adds a new piece of data (data can really be anything) to the list

count - tells us how many things are in the list

to_string - generates a string of all the elements in the list, separated by spaces

But for now, focus on building these functions so they work for just the first element of data appended to the list (we’ll handle multiple elements in the next iteration).

Expected behavior:

> require "./lib/linked_list"
> list = LinkedList.new
=> <LinkedList head=nil #45678904567>
> list.head
=> nil
> list.append("doop")
=> "doop"
> list
=> <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
> list.head.next_node
=> nil
> list.count
=> 1
> list.to_string
=> "doop"

-------

# Iteration 2 - Append, All/To String and Insert (Multiple Nodes)

Now that we can insert the first element of our list (i.e. the Head), let’s focus on supporting these operations for multiple elements in the list.

This iteration is really where we’ll build out the core structure that makes up our linked list – it will probably take you more time than the previous iterations.

Update your append, count, and to_s methods to support the following interaction pattern:

> require "./lib/linked_list"
> list = LinkedList.new
=> <LinkedList head=nil #45678904567>
> list.head
=> nil
> list.append("doop")
=> "doop"
> list
=> <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
> list.head
=> <Node data="doop" next_node=nil #5678904567890>
> list.head.next_node
=> nil
> list.append("deep")
=> "deep"
> list.head.next_node
=> <Node data="deep" next_node=nil #5678904567890>
> list.count
=> 2
> list.to_string
=> "doop deep"
Notice the key point here – the first piece of data we append becomes the Head, while the second becomes the Next Node of that (Head) node.

------
# Iteration 3 - Additional Methods - insert and prepend

Now we have nodes and a LinkedList class that manages the list. Next step is to add the insert and prepend methods.

prepend will add nodes to the beginning of the list.

insert will insert one or more elements at a given position in the list. It takes two parameters, the first one is the position at which to insert nodes, the second parameter is the string of data to be inserted.

Expected behavior:

> require "./lib/linked_list"
> list = LinkedList.new
> list.append("plop")
=> "plop"
> list.to_string
=> "plop"
> list.append("suu")
=> "suu"
> list.prepend("dop")
=> "dop"
> list.to_string
=> "dop plop suu"
> list.count
=> 3
> list.insert(1, "woo")
=> "woo"
list.to_string
=> "dop woo plop suu"

------
# Iteration 4 - Additional Methods - find, pop, includes?

Perfect, we are almost there! Next is to add find, pop and includes? methods.

find takes two parameters, the first indicates the first position to return and the second parameter specifies how many elements to return.

includes? gives back true or false whether the supplied value is in the list.

pop removes elements the last element from the list.

Expected behavior:

....
> list.to_string
=> "deep woo shi shu blop"
> list.find(2, 1)
=> "shi"
> list.find(1, 3)
=> "woo shi shu"
> list.includes?("deep")
=> true
> list.includes?("dep")
=> false
> list.pop
=> "blop"
> list.pop
=> "shu"
> list.to_string
=> "deep woo shi"