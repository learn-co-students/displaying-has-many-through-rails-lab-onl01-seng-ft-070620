class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    def appointment_time(time)
        self.appointment_datetime = Appointment.find_or_create_by(time: time)
    end
end
