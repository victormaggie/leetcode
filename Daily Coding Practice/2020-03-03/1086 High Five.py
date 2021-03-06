class Solution:
    def highFive(self, items):
        # hash map
        d = collections.defaultdict(list)
        # iterate all the number to generate heapq
        for idx, val in items:
            heapq.heappush(d[idx], val)
            if len(d[idx]) > 5:
                # pop the smallest one
                heapq.heappop(d[idx])
        
        return [[i, sum(d[idx])//len(d[idx])] for idx in d]

    # heapify and pop the smallest version

    
