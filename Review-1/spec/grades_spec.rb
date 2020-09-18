require 'grades'

describe Grades do
  
  describe 'input' do
    it 'Takes grades as an input' do
      grades = "Green, Green, Amber, Red, Green"
      expect(subject.input(grades)).to eq(["Green", "Green", "Amber", "Red", "Green"])
    end
  end

  describe 'gradeCount' do 
    it 'Takes the grades and counts them based on score' do
      gradeArr = ["Green", "Green", "Amber", "Red", "Green"]
      expect(subject.gradeCount(gradeArr)).to eq({"Amber"=>1, "Green"=>3, "Red"=>1})
    end
  end

  describe 'gradeResult' do
    it 'Takes a hash of results and returns them as string' do
      grades = "Green, Green, Amber, Red, Green"
      gradeArr = subject.input(grades)
      result = subject.gradeCount(gradeArr)
      expect(subject.gradeResult(result)).to eq("Amber: 1\nGreen: 3\nRed: 1")
      
    end
  end
 end