var connect = function (root) {
    // bfs solution
    if (!root) return root;

    leftmost = root;
    while (leftmost.left ) {
        head = leftmost;

        while (head) {
            head.left.next = head.right;
            if (head.next) head.right.next = head.next.left;
            head = head.next;
        }
        leftmost = leftmost.left;
    }
    return root;
}


// bfs solution 
