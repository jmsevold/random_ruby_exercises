                                              #1. Arrays

array = ["Blake","Ashley","Jeff"]

#a. Add a element to an array
array << "Henry"


#b. Write a statement to print out all the elements of the array.
array.each { |x| puts x }


#c. Return the value at index 1.
array[1]


#d. Return the index for the value "Jeff".
array.find_index("Jeff")


                                              #2. Hashes

instructor = {:name=>"Ashley", :age => 27}

#a. Add a new key for location and give it the value "NYC".
instructor[:location] = "NYC"


#b. Write a statement to print out all the key/value pairs in the hash
instructor.each do |k,v|
  puts "The key #{k} has a value of #{v}"
end



#c. Return the name value from the hash.
instructor[:name]


#d. Return the key name for the value 27.
instructor.key(27)


                                         #3. Nested Structures
school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

#a. Add a key to the school hash called "founded_in" and set it to the value 2013.
school[:founded_in] = "2013"


#b. Add a student to the school's students' array.
school[:students] << {:name => "Lucifer", :grade => "A" }



#c. Remove "Billy" from the students' array.

  #access the school hash, access the value of the :students key, an array
  #delete index 1 of the array
school[:students].delete_at(1)


#d. Add a key to every student in the students array called "semester" and assign it the value "Summer".

#access the value of the students key in the school hash, an array
#iterate over the array, adding the specified key and value
school[:students].each do |hash|
  hash[:semester] = "Summer"
end

#e. Change Ashley's subject to "being almost better than Blake"
school[:instructors][1][:subject] = "being almost better than Blake"



#f. Change Frank's grade from "A" to "F".
school[:students][1][:grade] = "F"

#g. Return the name of the student with a "B".
  #iterate through each element(hash) in the array,
  #each element is a hash with two keys
  # if hash[:grade] = "b"
  #return the value of hash[:name]
school[:students].each do |student|
  if student[:grade] == "B"
    puts student[:name]
    student[:name]
  end
end


#h. Return the subject of the instructor "Jeff".
school[:instructors].each do |instructor|
  if instructor[:name] == "Jeff"
    puts instructor[:subject]
    instructor[:subject]
  end
end

#i. Write a statement to print out all the values in the school. ***FLAG
  #consider a helper, who's return value is printing all the values on the hash it
  #is called on
  # 1st key in school is :name
  #2nd key in school is :location
  #3rd key in school is : instructors with an array, holding 3 hashes inside
  #4th key in school is :students with an array holding 4 hashes inside
  # check to see if a value stores an array, if so, iterate over it to
  #print all values of the keys inside the hashes inside it.
     #first you call a method on the array to access the hashes, then you call a method
     # on the hashes
  
  
  
school.each_value do |value|
  if value.class == String
    puts value
  else
    value.each do |value|
      value.each_value do |person|
        puts person
      end
    end
  end
end

                                               #Methods     


#a Create a method to return the grade of a student,
#given that student's name. ii. Then use it to refactor your work in 3.i.

#iterate through the array and find the hash who has a key matching
# the name that was passed in

def return_grade(school,name)  
  school[:students].each do |student|
    if student.has_value?(name)
      return student[:grade]
    end
  end
end


#b. i.Create a method to update a instructor's subject given the instructor and the new subject. 
#ii. Then use it to update Blake's subject to "being terrible".


def update_instructor(school,name,new_subject)
  school[:instructors].each do |instructor|
    if instructor.has_value?(name)
      instructor[:subject] = new_subject
    end
  end
end

update_instructor(school,"Blake","being terrible")


#c. i. Create a method to add a new student to the schools student array. 
#ii. Then use it to add yourself to the school students array.
  # add a new hash with the key :name => new_student
  

def add_student(school,new_student)
  new_student_hash = {}
  new_student_hash[:name] = new_student
  school[:students] << new_student_hash
end

add_student(school,'Jonathan')

#d. i. Create a method that adds a new key at the top level of the school hash, given a key and a value. 
#ii. Then use it to add a "Ranking" key with the value 1.

def new_key(school,key,value)
  school[key.to_sym] = value
end

new_key(school,'Ranking', 1)

                                      #5. Object Orientation
#a. Create a bare bones class definition for a School class.

class School
end 


#b. Define an initialize method for the School class.
class School
  def initialize
  end
end

#i  Give your School class the instance variables: name, location, ranking, students, instructors. 
#NOTE: These variables should be of the same type as they are in the hash above.
class School
  def initialize
    @name = :name
    @location = :location
    @ranking = :ranking
    @students = :students
    @instructors = :instructors
  end
end

#ii. Rewrite your initialize method definition to take a parameter for each instance variable.

class School
  def initialize(name,location,ranking,students,instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students = students
    @instructors = instructors
  end
end



#iii. Initialize each instance variable with the value of the corresponding parameter.

school = School.new(:Sellers,:Glendora,1,500,20)



#c. Create an attr_accessor for name, location, instructors, and students. 
#Create an attr_reader for ranking.

class School
  attr_accessor :name, :location, :instructors, :students
  attr_reader :ranking
  def initialize(name,location,ranking,students,instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students = students
    @instructors = instructors
    
    def set_ranking(rank)
      @ranking = rank
    end
  end
end

#e. Create a method to add a student to the school, given a name, a grade, and a semester.
  #this sounds like a new student is a hash
  # note: this method only works if an array is passed as the argument for 'students'
class School
  attr_accessor :name, :location, :instructors, :students
  attr_reader :ranking
  def initialize(name,location,ranking,students,instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students = students
    @instructors = instructors
  end
    def set_ranking(rank)
      @ranking = rank
    end
    def add_student(name,grade,semester)
      new_student = {}
      new_student[:name] = name
      new_student[:grade] = grade
      new_student[:semester] = semester
      @students << new_student
    end
end

#f. Create a method to remove a student from the school, given a name.
class School
  attr_accessor :name, :location, :instructors, :students
  attr_reader :ranking
  def initialize(name,location,ranking,students,instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students = students
    @instructors = instructors
  end
    def set_ranking(rank)
      @ranking = rank
    end
    def add_student(name,grade,semester)
      new_student = {}
      new_student[:name] = name
      new_student[:grade] = grade
      new_student[:semester] = semester
      @students << new_student
    end
    def remove_student(name)
      students.each do |student_hash|
        if student_hash.has_value?(name)
          students.delete(student_hash)
        end
      end
    end
end
  
  
#g. Create an array constant SCHOOLS that stores all instances of your School class.

 
class School
  attr_accessor :name, :location, :instructors, :students
  attr_reader :ranking
  
  def initialize(name,location,ranking,students,instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students = students
    @instructors = instructors
  end
  
  def set_ranking(rank)
    @ranking = rank
  end
  
  def add_student(name,grade,semester)
    new_student = {}
    new_student[:name] = name
    new_student[:grade] = grade
    new_student[:semester] = semester
    @students << new_student
  end
  
  def remove_student(name)
    @students.each do |student_hash|
      if student_hash.has_value?(name)
        @students.delete(student_hash)
      end
    end
  end
end

                                        #6. Classes
#a. Create a Student class.
class Student
  attr_accessor :name,:grade,:semester
  def initialize(name,grade,semester)
    @name = name
    @grade = grade
    @semester = semester
  end
end
  
  
  
  
  
  
#b. Refactor your School instance methods to treat Students as an array of 
    #objects instead of an array of hashes.
    
#c.Create a method in the School class that finds a student by name and returns 
    #the correct Student object.
    class School
      attr_accessor :name, :location, :instructors, :students
      attr_reader :ranking

      def initialize(name,location,ranking,students,instructors)
        @name = name
        @location = location
        @ranking = ranking
        @students = students
        @instructors = instructors
      end

      def set_ranking(rank)
        @ranking = rank
      end

      def add_student(student)
        @students << student
      end

      def remove_student(name)
       @students.delete(name)
      end
      
      def find_student(name)
        @students.each do |student|
          if student.name == name
            return student
          end
        end
      end
    end

 school = School.new('sellers','glendora',1,[],[])
 jake =Student.new('jake','F',"spring")





















  


