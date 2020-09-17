class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def pretty_time
        self.appointment_datetime.strftime(format='%B %d, %Y at %H:%M')
    end
end
