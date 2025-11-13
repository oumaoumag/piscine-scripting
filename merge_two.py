import json

def merge_two(first_dict):
    """
    Reads key/value pairs from the CLI and merges them into a new dictionary.
    
    The function stops reading input when the user types 'exit' as the key.
    Values are always converted to integers. 
    Returns a serialized JSON string of the merged dictionaries.
    """
    
    # Create a copy of the original dictionary to merge new values into
    merged_dict = first_dict.copy()
    
    print("\nEnter key/value pairs separated by a space (e.g., 'item 10').")
    print("Type 'exit' as the key to finish input and serialize the dictionary.\n")

    while True:
        try:
            # Prompt the user for input
            user_input = input("Add a new entry (key value) or 'exit': ")
            
            # Split the input into parts
            parts = user_input.split()

            if not parts:
                continue # Skip empty lines

            key = parts[0]
            
            # Check for the exit condition first
            if key.lower() == 'exit':
                print("\nExiting input loop.")
                break
            
            # Ensure we have a value component before trying to access it
            if len(parts) != 2:
                raise ValueError("Input must have exactly two parts: a key and a value.")

            value_str = parts[1]
            
            # Convert the value part to an integer (as required)
            value_int = int(value_str)
            
            # Add the new key-value pair to the dictionary
            merged_dict[key] = value_int
            print(f"Added: '{key}': {value_int}")

        except ValueError as e:
            # Catch errors in split/unpacking (not 2 parts) or int conversion (not a number)
            print(f"\nInvalid input: {e}")
            print("Please ensure you enter a valid key followed by an integer value, separated by a space.\n")
            continue # Continue the loop, asking for valid input
            
    # Serialize the final merged dictionary into a JSON formatted string
    json_output = json.dumps(merged_dict, indent=4)
    
    return json_output

# --- Example Usage ---

# Initialize a starting dictionary
initial_data = {"existing_item": 50, "default_count": 100}

# Call the function which handles the CLI interaction
final_json_string = merge_two(initial_data)

# Print the final result returned by the function
print("\n--- Final Serialized JSON Output ---")
print(final_json_string)
