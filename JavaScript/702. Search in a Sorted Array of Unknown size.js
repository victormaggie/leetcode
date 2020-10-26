var search = function (reader, target) {
    
    let left =0 , right = 1;
    
    while (reader.get(right) < target){
        left = right;
        right *= 2;
    }
    
    while (left <= right) {
        
        const mid = left + Math.floor((right - left) / 2);
        
        if (reader.get(mid) === target) return mid;
        else if (reader.get(mid) > target) right = mid - 1;
        else left = mid + 1;
    }
    
    return -1;
    
};

// log n solution 



