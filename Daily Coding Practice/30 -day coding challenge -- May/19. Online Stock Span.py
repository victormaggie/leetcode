class StockSpanner:
    def __init__(self):
        self.s = list()
    
    def next(self, price):
        span = 1
        while self.s and price >= self.s[-1][0]:
            span += self.s[-1][1]
            self.s.pop()
        self.s.append((price, span))
        return span

