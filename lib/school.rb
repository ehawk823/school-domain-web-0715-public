class School
  
  @@roster = {}
  @@ninth_grade = []
  @@tenth_grade = []
  @@seventh_grade = []

  def initialize (school_name)
    @school_name = school_name
    @ninth_grade = []
    @tenth_grade = []
    @seventh_grade = []
  end

  def add_student(name, grade)
    if grade == 7
      seventh_grade << name
      @@roster[grade] = seventh_grade
    end
    if grade == 9
      ninth_grade << name
      @@roster[grade] = ninth_grade
    end
    if grade == 10
      tenth_grade << name
      @@roster[grade] = tenth_grade
    end
  end

  def roster
    @@roster
  end

  def seventh_grade
    @seventh_grade
  end

  def ninth_grade
    @ninth_grade
  end

  def tenth_grade
    @tenth_grade
  end

  def grade (grade)
    @@roster[grade]
  end

  def sort
    @@roster[7] = @seventh_grade.sort
    @@roster[9] = @ninth_grade.sort
    @@roster[10] = @tenth_grade.sort
    @@roster
  end
end



