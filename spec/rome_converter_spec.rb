require "./RomeConverter.rb"

describe RomeConverter do
  describe "#to_rom" do
    context "convertion from a decimal system" do
        it "converts 1 to 'I'" do
        expect(RomeConverter.new.to_rome(1)).to eql("I")
      end
	it "converts 2 to 'II'" do
        expect(RomeConverter.new.to_rome(2)).to eql("II")
      end
	it "converts 3 to 'III'" do
        expect(RomeConverter.new.to_rome(3)).to eql("III")
      end
	it "converts 4 to 'IV'" do
        expect(RomeConverter.new.to_rome(4)).to eql("IV")
      end
	it "converts 5 to 'V'" do
        expect(RomeConverter.new.to_rome(5)).to eql("V")
      end
        it "converts 6 to 'VI'" do
        expect(RomeConverter.new.to_rome(6)).to eql("VI")
      end
	it "converts 7 to 'VII'" do
        expect(RomeConverter.new.to_rome(7)).to eql("VII")
      end
	it "converts 8 to 'VIII'" do
        expect(RomeConverter.new.to_rome(8)).to eql("VIII")
      end
	it "converts 9 to 'IX'" do
        expect(RomeConverter.new.to_rome(9)).to eql("IX")
      end
	it "converts 10 to 'X'" do
        expect(RomeConverter.new.to_rome(10)).to eql("X")
      end
	it "converts 15 to 'XV'" do
        expect(RomeConverter.new.to_rome(15)).to eql("XV")
      end
	it "converts 20 to 'XX'" do
        expect(RomeConverter.new.to_rome(20)).to eql("XX")
      end
	it "converts 30 to 'XXX'" do
        expect(RomeConverter.new.to_rome(30)).to eql("XXX")
      end
	it "converts 40 to 'XL'" do
        expect(RomeConverter.new.to_rome(40)).to eql("XL")
      end
     	 it "converts 50 to 'L'" do
        expect(RomeConverter.new.to_rome(50)).to eql("L")
      end
   	it "converts 59 to 'LIX'" do
        expect(RomeConverter.new.to_rome(59)).to eql("LIX")
      end
	it "converts 100 to 'C'" do
        expect(RomeConverter.new.to_rome(100)).to eql("C")
      end
	it "converts 200 to 'CC'" do
        expect(RomeConverter.new.to_rome(200)).to eql("CC")
      end
	it "converts 300 to 'CCC'" do
        expect(RomeConverter.new.to_rome(300)).to eql("CCC")
      end
	it "converts 400 to 'CD'" do
        expect(RomeConverter.new.to_rome(400)).to eql("CD")
      end
	it "converts 500 to 'D'" do
        expect(RomeConverter.new.to_rome(500)).to eql("D")
      end
	it "converts 689 to 'DCLXXXIX'" do
        expect(RomeConverter.new.to_rome(689)).to eql("DCLXXXIX")
      end
	it "converts 1000 to 'M'" do
        expect(RomeConverter.new.to_rome(1000)).to eql("M")
      end
	it "converts 2000 to 'MM'" do
        expect(RomeConverter.new.to_rome(2000)).to eql("MM")
      end
	it "converts 3000 to 'MMM'" do
        expect(RomeConverter.new.to_rome(3000)).to eql("MMM")
      end
	it "converts 3,276 to ' MMMCCLXXVI'" do
        expect(RomeConverter.new.to_rome(3276)).to eql(" MMMCCLXXVI")
      end
	it "converts 4000 to 'M(V)'" do
        expect(RomeConverter.new.to_rome(4000)).to eql("M(V)")
      end
	 it "converts 4999 to 'M(V)CMXCIX'" do
        expect(RomeConverter.new.to_rome(4999)).to eql("M(V)CMXCIX")
      end
    end

    context "invalid operations" do
      it "fails given 0" do
        expect(RomeConverter.new.to_rome(0)).not_to eql("")
      end
      it "fails given 100" do
        expect(RomeConverter.new.to_rome(100)).not_to eql("LL")
      end
      it "fails given 500" do
        expect(RomeConverter.new.to_rome(500)).not_to eql("CCCCC")
      end
      it "fails given 5000" do
        expect(RomeConverter.new.to_rome(5000)).not_to eql("MMMMM")
      end
    end
  end

  describe "#to_dec" do
    context " convertion from a roman numeral" do
      it "converts 'I' to 1" do
        expect(RomeConverter.new.to_dec('I')).to eql(1)
      end
      	it "converts 'II' to 2" do
        expect(RomeConverter.new.to_dec('II')).to eql(2)
      end
	it "converts 'III' to 3" do
        expect(RomeConverter.new.to_dec('III')).to eql(3)
      end
	it "converts 'IV' to 4" do
        expect(RomeConverter.new.to_dec('IV')).to eql(4)
      end
	it "converts 'V' to 5" do
        expect(RomeConverter.new.to_dec('V')).to eql(5)
      end
        it "converts 'VI' to 6" do
        expect(RomeConverter.new.to_dec('VI')).to eql(6)
      end
	it "converts 'VII' to 7" do
        expect(RomeConverter.new.to_dec('VII')).to eql(7)
      end
	it "converts 'VIII' to 8" do
        expect(RomeConverter.new.to_dec('VIII')).to eql(8)
      end
	it "converts 'IX' to 9" do
        expect(RomeConverter.new.to_dec('IX')).to eql(9)
      end
	it "converts 'X' to 10" do
        expect(RomeConverter.new.to_dec('X')).to eql(10)
      end
	it "converts 'XV' to 15" do
        expect(RomeConverter.new.to_dec('XV')).to eql(15)
      end
	it "converts 'XX' to 20" do
        expect(RomeConverter.new.to_dec('XX')).to eql(20)
      end
	it "converts 'XXX' to 30" do
        expect(RomeConverter.new.to_dec('XXX')).to eql(30)
      end
	it "converts 'XL' to 40" do
        expect(RomeConverter.new.to_dec('XL')).to eql(40)
      end
     	 it "converts 'L' to 50" do
        expect(RomeConverter.new.to_dec('XL')).to eql(50)
      end
   	it "converts 'LIX' to 59" do
        expect(RomeConverter.new.to_dec('LIX')).to eql(59)
      end
	it "converts 'C' to 100" do
        expect(RomeConverter.new.to_dec('C')).to eql(100)
      end
	it "converts 'CC' to 200" do
        expect(RomeConverter.new.to_dec('CC')).to eql(200)
      end
	it "converts 'CCC' to 300" do
        expect(RomeConverter.new.to_dec('CC')).to eql(300)
      end
	it "converts 'CD' to 400" do
        expect(RomeConverter.new.to_dec('CD')).to eql(400)
      end
	it "converts 'D' to 500" do
        expect(RomeConverter.new.to_dec('D')).to eql(500)
      end
	it "converts 'DCLXXXIX' to 689" do
        expect(RomeConverter.new.to_dec('DCLXXXIX')).to eql(689)
      end
	it "converts 'M' to 1000" do
        expect(RomeConverter.new.to_dec('M')).to eql(1000)
      end
	it "converts 'MM' to 2000" do
        expect(RomeConverter.new.to_dec('MM')).to eql(2000)
      end
	it "converts 'MMM' to 3000" do
        expect(RomeConverter.new.to_dec('MMM')).to eql(3000)
      end
	it "converts 'MMMCCLXXVI' to 3276" do
        expect(RomeConverter.new.to_dec('MMMCCLXXVI')).to eql(3276)
      end
	it "converts 'M(V)' to 4000" do
        expect(RomeConverter.new.to_dec('M(V)')).to eql(4000)
      end
	 it "converts 'M(V)CMXCIX' to 4999" do
        expect(RomeConverter.new.to_dec('M(V)CMXCIX')).to eql(4999)
      end
  end

  	context "invalid operations" do
	    it "fails given ''" do
	      expect(RomeConverter.new.to_dec('')).not_to eql(0)
	    end
	    it "fails given LL" do
		expect(RomeConverter.new.to_dec('LL')).not_to eql(100)
	    end
	    it "fails given CCCCC" do
		expect(RomeConverter.new.to_dec('CCCCC')).not_to eql(500)
	    end
	    it "fails given MMMMM" do
	        expect(RomeConverter.new.to_dec('MMMMM')).not_to eql(5000)
    	    end
  	end
   end
end
