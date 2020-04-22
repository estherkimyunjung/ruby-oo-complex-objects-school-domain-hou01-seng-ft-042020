# code here!
class School
    attr_accessor :roster
    def initialize (school_name)
        @school_name = school_name
        @roster = {}
    end
    def add_student(stu_name, grade)
        # roster[grade] = []
        # roster[grade] << stu_name
        #how many time it create the array in to hash
        #use push or << but it confused
        roster[grade] ||= []
        roster[grade] << stu_name
    end
    def grade(grade)
        roster[grade]
    end
    def sort
        result = {}
        roster.each do |grade, stu_name|
            result[grade] = stu_name.sort
        end
        result
    end

end
