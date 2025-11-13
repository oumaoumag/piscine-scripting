import json

def merge_two(first_dict):
    merged = first_dict.copy()
    
    while True:
        try:
            line = input()
        except EOFError:
            break
            
        line = line.strip()
        if not line:
            continue
            
        parts = line.split()
        if len(parts) < 2:
            continue
            
        key, val_str = parts[0], parts[1]
        
        if key == "exit":
            break
            
        try:
            value = int(val_str)
            merged[key] = value
        except ValueError:
            continue
    
    return json.dumps(merged)