## Intro
I found myself talking about linked lists with a coworker a few weeks back and found myself feeling strangely nostalgic for my CISC101 days. And when I get nostalgic and have a free night, this is the kind of thing that happened.

I ended up finding [an exercise online](https://coderbyte.com/algorithm/linked-list-middle-element) that urged me to find an optimized algorithm for finding the middle element of a linked list in _O(n)_ time.

---
## My Middlers
I wrote two middlers:

- `List#slow_middle` uses iterates through the list and tallies up the length, then halves that length and rounds down to return the middle element.

- `List#fast_middle` (I'm really good at naming things, I know) finds the middle in a single pass by using two cursors: one that counts one link at a time and one that counts two at a time. Once the fast cursor reaches the end of the list, the slow cursor stops. The element that it stops on _\*drumroll\*_ is the middle of the list.

---
## Extra bonus:

Along the way, I added a few extra methods for convenience and just for fun. I also set up a file to do some benchmarking, which I've never before played with in Ruby. You can find these in `lib/benchmark.rb`
