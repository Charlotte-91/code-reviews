require 'grades'

describe Grades do
  
  describe 'input' do
    it 'Takes grades as an input' do
      grades = "Green, Green, Amber, Red, Green"
      expect(subject.input(grades)).to equal(grades)
    end
  end
end