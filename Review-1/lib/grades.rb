class Grades


  def input(grades)
    grades = grades.delete(' ')
    gradeArr = grades.split(',')
  end

  def gradeCount(gradeArr)
    result = Hash.new(0)
    gradeArr.each { |grade| result[grade] += 1 }
    return result
  end

  def gradeResult(result)
    resultArr = []
    result.each {|grade, count| resultArr.push("#{grade}: #{count}\n") }
    return resultArr.join()

  end
 

end