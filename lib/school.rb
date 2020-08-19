class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    first_digit = @start_time[0].to_i + @hours_in_school_day
    "#{first_digit}:00"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    capitalized_names = []
    @student_names.each {|name| capitalized_names << name.capitalize}
    capitalized_names
  end

end
