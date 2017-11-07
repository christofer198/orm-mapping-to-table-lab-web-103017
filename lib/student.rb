class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_reader :id
  attr_accessor :name, :grade
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
  end

  self.create_table
    sql =  <<-SQL
        CREATE TABLE IF NOT EXISTS songs (
          id INTEGER PRIMARY KEY,
          name TEXT,
          album TEXT
          )
          SQL
    DB[:conn].execute(sql)
  end

end
