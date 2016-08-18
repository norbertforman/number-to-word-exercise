require 'helper_spec'

describe Convert do
  describe "Convert ones to words" do
    it "Valid ones" do
      convert = Convert.new()
      expect(convert.to_word(1)).to eq 'one'
      expect(convert.to_word(5)).to eq 'five'
      expect(convert.to_word(8)).to eq 'eight'
    end
  end

  describe "Convert tens to words" do
    it "Valid tens" do
      convert = Convert.new()
      expect(convert.to_word(10)).to eq 'ten'
      expect(convert.to_word(14)).to eq 'fourteen'
      expect(convert.to_word(88)).to eq 'eighty eight'
    end
  end

  describe "Convert hundreds to words" do
    it "Valid hundreds" do
      convert = Convert.new()
      expect(convert.to_word(100)).to eq 'one hundred'
      expect(convert.to_word(711)).to eq 'seven hundred eleven'
      expect(convert.to_word(567)).to eq 'five hundred sixty seven'
    end
  end

  describe "Convert thousands to words" do
    it "Valid thousands" do
      convert = Convert.new()
      expect(convert.to_word(1000)).to eq 'one thousand'
      expect(convert.to_word(4011)).to eq 'four thousand eleven'
      expect(convert.to_word(9378)).to eq 'nine thousand three hundred seventy eight'
    end
  end
end