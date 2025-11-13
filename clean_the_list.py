def clean_list(shopping_list):
    if not shopping_list:
        return []
    if 'milk' not in [item.strip().lower() for item in shopping_list]:
        shopping_list.append('milk')
    return [f"{i+1}/ {item.strip().capitalize()}" for i, item in enumerate(shopping_list)]

