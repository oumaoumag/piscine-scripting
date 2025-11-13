data = {
    1 : "Monday",
    2 :"Tuesday",
    3 : "Wednesday",
    4 : "Thursday",
    5 : "Friday",
    6 : "Saturday",
    7 : "Sunday",
}
# print(data)

def day_from_number(day_number):
    if day_number in data:
        return data[day_number]
    else:
        return None


# x = day_from_number(0)
# print(x)

def day_to_number(day):
  
    for number, name in data.items():
        if name == day:
            return number
    return None 
