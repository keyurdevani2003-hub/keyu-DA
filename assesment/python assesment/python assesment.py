


# 1. Clinic Appointment System


class ClinicAppointment:
    def __init__(self):
        self.appointments = []
        self.slots = ["10am", "11am", "12pm", "2pm", "3pm"]

    def book_appointment(self):
        name = input("Enter Name: ")
        age = int(input("Enter Age: "))
        mobile = input("Enter Mobile: ")
        doctor = input("Enter Doctor Name: ")

        print("Available Slots:", self.slots)
        slot = input("Choose Slot: ")

        count = 0
        for appt in self.appointments:
            if appt['doctor'] == doctor and appt['slot'] == slot:
                count += 1

        if count >= 3:
            print("Slot Full")
        else:
            self.appointments.append({
                'name': name,
                'age': age,
                'mobile': mobile,
                'doctor': doctor,
                'slot': slot
            })
            print("Appointment Booked")

    def view_cancel(self):
        mobile = input("Enter Mobile: ")
        for appt in self.appointments:
            if appt['mobile'] == mobile:
                print(appt)
                choice = input("Cancel? (y/n): ")
                if choice == 'y':
                    self.appointments.remove(appt)
                    print("Cancelled")
                return
        print("No Appointment Found")




# 2. School Management System


class SchoolManagement:
    def __init__(self):
        self.students = {}
        self.id_counter = 1

    def new_admission(self):
        name = input("Name: ")
        age = int(input("Age: "))
        student_class = int(input("Class (1-12): "))
        mobile = input("Mobile: ")

        if age < 5 or age > 18:
            print("Invalid Age")
            return

        if len(mobile) != 10 or not mobile.isdigit():
            print("Invalid Mobile")
            return

        student_id = self.id_counter
        self.id_counter += 1

        self.students[student_id] = {
            'name': name,
            'age': age,
            'class': student_class,
            'mobile': mobile
        }

        print(f"Admission Done ID: {student_id}")

    def view_student(self):
        sid = int(input("Enter ID: "))
        print(self.students.get(sid, "Not Found"))

    def update_student(self):
        sid = int(input("Enter ID: "))
        if sid in self.students:
            new_mobile = input("New Mobile: ")
            new_class = input("New Class: ")

            self.students[sid]['mobile'] = new_mobile
            self.students[sid]['class'] = new_class

            print("Updated")
        else:
            print("Not Found")

    def remove_student(self):
        sid = int(input("Enter ID: "))
        if sid in self.students:
            del self.students[sid]
            print("Removed")
        else:
            print("Not Found")






# 3. Bus Reservation System


class BusReservation:
    def __init__(self):
        self.routes = {
            1: ("Mumbai to Pune", 500),
            2: ("Delhi to Jaipur", 600),
            3: ("Surat to Ahmedabad", 300)
        }
        self.tickets = {}
        self.seats = {route: [] for route in self.routes}
        self.ticket_id = 1

    def show_routes(self):
        for k, v in self.routes.items():
            print(k, "-", v[0], "₹", v[1])

    def book_ticket(self):
        name = input("Name: ")
        age = int(input("Age: "))
        mobile = input("Mobile: ")

        self.show_routes()
        route = int(input("Select Route: "))

        if len(self.seats[route]) >= 40:
            print("Bus Full")
            return

        seat_no = len(self.seats[route]) + 1
        self.seats[route].append(seat_no)

        tid = self.ticket_id
        self.ticket_id += 1

        self.tickets[tid] = {
            'name': name,
            'route': self.routes[route][0],
            'seat': seat_no
        }

        print(f"Ticket Booked ID: {tid}, Seat: {seat_no}")

    def view_ticket(self):
        tid = int(input("Enter Ticket ID: "))
        print(self.tickets.get(tid, "Not Found"))

    def cancel_ticket(self):
        tid = int(input("Enter Ticket ID: "))
        if tid in self.tickets:
            del self.tickets[tid]
            print("Cancelled")
        else:
            print("Not Found")


            