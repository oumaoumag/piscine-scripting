import json
import sys

def merge_two(first_dict):
    """
    Reads key/value pairs from standard input (each line: key value),
    stops on 'exit' key,
    converts values to int,
    merges into first_dict,
    and returns JSON string of the merged dictionary.
    """
    
    merged_dict = first_dict.copy()

    print("\nEnter key/value pairs separated by a space (e.g., 'item 10').")
    print("Type 'exit' as the key to finish input and serialize the dictionary.\n")

    for line in sys.stdin:
        line = line.strip()
        if not line:
            continue

        parts = line.split()
        if len(parts) == 0:
            continue
        
        key = parts[0]
        if key.lower() == 'exit':
            break
        
        # Validate that value exists
        if len(parts) < 2:
            print("Invalid input: Please enter both key and value separated by space.")
            continue
        
        try:
            value = int(parts[1])
        except ValueError:
            print("Invalid input: Value must be convertible to integer.")
            continue
        
        merged_dict[key] = value
        print(f"Added: '{key}': {value}")

    json_output = json.dumps(merged_dict)
    return json_output
