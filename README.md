# Linked List

* A Linked List models a collection of data as a series of "nodes" which link to
 one another in a chain.
* In a singly-linked list (the type we will be building) you have a head, which
  is a node representing the "start" of the list, and subsequent nodes which
  make up the remainder of the list.
* The list itself can hold a reference to one thing -- the head node.
* Each node can hold a single element of data and a link to the next node in the
 list.
 * The last node of the list is often called its tail.

## Development Process

1. How will you know when the problem is solved?
* We will know when the problem is solved when we are able to create a list,
  insert some nodes, and run operations against the list. Some of these
  operations include inserting new nodes, asking the list for its head, checking
   the last node to make sure its tail does not point to another node.

2. How will it be used? It's interface? What do you put in and what do you get
out?
* They way it would be used is that we would create a List that can be
instantiated with some Nodes passed into it, or without any nodes passes into it
. If we created a List without any Nodes passed in, we would then use the
behaviors of the List to add Nodes to it. From there, we would call methods on
the list to ask questions and do work on our nodes. If we were to ask the List
for its nodes we would get back a "representation" of our linked nodes.

3. What is the most trivial use case? (mvp-mvp)
* For the List, the mvp-mvp would be to create an empty list object that has no
nodes and gives us back ```nil``` for its head. For a Node, the mvp-mvp would be
to create an empty node object that has nil for its element and nil for its
link.

4. What's the minimum work case?
* The minimum work case is we create a List object that can take in one Node
object. From there we can look at the head of the List, which should be the
one Node object that we inserted. From there we should be able to get to the one
Node object and see what its element is and that it should be the tail and its
link should nil.

5. What's the next most complex case?
* The next most complex case would be that we create a List object and we feed
it two Node objects. From there, the List head should point to our first Node
object. The first Node object should then have its link pointing to the second
Node object. The second Node object should then have its link being nil and also
be the tail of the List object.

5. What's the next most complex case?
* Adding a 3rd node, 4th node, etc....

5. What's the next most complex case?
The next most complex case would be creating different behavior to add a Node
object anywhere in the list, passing in an element and getting back its position
within the List, all the different behaviors.

6. Sketch an algorithm in pseudocode.
  1. Create a new List
  2. Create 3 (multiple) new Nodes
  3. Put elements in the Node
  4. Add Nodes to List
  5. Check if head of List points to the first Node
  6. Check if first nodes link points to the second node
  7. Check if second node link points to the thrid node
  7. Make sure link of third Node is still nil
  7.
  8.
  9.

7. Implement

8. Whole Problem solved?
  * No? Return to 5

9. Anticipate problems / edge cases

10. Refactor

### Remember that 8 to 5 can repeat n times
