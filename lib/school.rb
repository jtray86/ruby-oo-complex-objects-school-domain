class School
    attr_reader :roster, :add_student
    def initialize (name)
        @roster = {}
    end  
    def roster=(roster)
        @roster[grade] ||= []
        @roster[grade] = name
    end  
    def add_student(student_name, grade)
        if @roster[grade]
          @roster[grade] << student_name
        else
          @roster[grade] = []
          @roster[grade] << student_name
        end  
    end  
    def grade grade
        @roster[grade]
    end    
    def sort
        sorted={}
        @roster.each do |grade, students| 
            sorted[grade] = students.sort
        end
        sorted
    end        
end    