import json

def merge_two(first_dict):
    merged = first_dict.copy()
    
    while True:
        print("Add a new entry:\n")
        key = input("key: ").strip()
        
        if key == "exit":
            break
        
        value = input("value: ").strip()
        try:
            value = int(value)
            
        except ValueError:
            continue
        
        merged[key] = value
    
    return json.dumps(merged)