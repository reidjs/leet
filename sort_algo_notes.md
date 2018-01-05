# Bubble Sort 
Iterates through array and swaps w/ element in front if necessary 
Sets flag if swap is made 
Goes through until no swaps are made 

* Time complexity: O(n^2)

* Space complexity: O(1)

Can be fast on tiny datasets 
Stable

# Selection Sort 

Finds smallest item in array and swaps to front, locks it. Finds next smallest in array, swaps to 2nd position, locks it. etc

Similar to heapsort because it tracks minimum element. 

* Time complexity: O(n^2)

* Space complexity: O(1)

Usually unstable

# Insertion Sort 

Build a sorted array behind you as you go. As you step through the array. For each element, walk backwards through the array and find the appropriate spot for it. 

* Time: O(n^2)

* Space: O(1)

Stable

# Merge Sort 

Break input into many pieces recursively, merges back together. 

* Time: O(nlogn) true in worst case, average case, and best case.

* Space: O(3n) -- linear 

Breaks perfectly in half at every step, therefore number of levels in every step of tree is twice previous. Essentially a depth first search on a tree. 
Recursive algos are minimum O(n)

Useful because it's _stable_

# Heap Sort 

Turn input array into heap, extract min, set into appropriate place.

* Time: O(nlogn) -- Turning array into heap is nlogn process. Extraction is log n process, which you have to do n times. Therefore, O(nlogn). Worst case, best case, and average case are the same.

Useful because it's stable and uses low memory (constant space)

* Space: Can do in place. O(1)

Unstable

# Quick Sort 

Sort around pivot, pick random pivot, sort around, etc. 

* Time: Best case/Average case: O(nlogn). However, in pathological case where pivot picks sorted element each time you get the worst case: O(n^2)

* Space: Can do in place. O(logn) recursive or O(n) with poor pivot and recursive.

Can be written stably if not in place. Usually unstable
# Summary

Sublinear is really the only thing that matters, so logn is fine. 

Why not use heapsort over quicksort? 
Cache has limited size so the heapsort can sometimes exceed the cache size. Quicksort only works on one element of the input array. 

Quick Sort > Merge Sort > Heap Sort 