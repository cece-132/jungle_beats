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

Iteration 1 - Append, To String, and Count (Single Node / Element)
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