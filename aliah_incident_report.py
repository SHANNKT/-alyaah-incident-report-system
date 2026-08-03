def lab_equipment_damage(incident_items, status):
    if incident_items == "yes":
        return "the Projecter in lab 2 is not working"
    elif status == "High":
        return "Not working"
    else:
        return ""


equipment_damages = 0

while True:

    name = input("Enter student name (or 'exit' to stop): ").strip().lower()

    if name == "exit":
        break

    incident_items = input("Is there evidence attached? (Yes/No): ").strip().lower()

    status = input("Enter priority (low/medium/high): ").strip().lower()

    books = int(input("Incident description? "))

    result = lab_equipment_damage(incident_items, status)

    if status == "Borrowing allowed":

        if books <= 0:
            print(name + ": Invalid number")

        elif books > 3:
            print(name + ": submitted successfully")
            equipment_damages += 1

        else:
            print(name + ": Report submitted successfully")
            equipment_damages += 1

    elif result == "the Projecter in lab 2 is not working":
        print(name + ": Not successfully")

    else:
        print(name + ": Not successfully")

    print()


print("Current Status:", equipment_damages)