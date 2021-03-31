require './atm'

RSpec.describe ATM do
  context "存錢" do
    it "可以存錢" do
      atm = ATM.new(10)
      atm.deposit(5)
      expect(atm.balance).to be 15
    end

    it "可以存錢2" do
      atm = ATM.new(10)
      atm.deposit(10)
      expect(atm.balance).to be 20
    end

    it "不可以存 0 元或是小於 0 元的金額" do
      atm = ATM.new(10)
      atm.deposit(-5)
      expect(atm.balance).to be 10
    end
  end

  context "領錢" do
    it "可以領錢" do
      atm = ATM.new(10)
      money = atm.withdraw(4)
      expect(atm.balance).to be 6
      expect(money).to be 4
    end

    it "不可以領 0 元或是小於 0 元的金額" do
      atm = ATM.new(20)
      money = atm.withdraw(-5)
      expect(atm.balance).to be 20
      expect(money).to be 0
    end

    it "不能領超過本身餘額" do
      atm = ATM.new(20)
      money = atm.withdraw(25)
      expect(atm.balance).to be 20
      expect(money).to be 0
    end
  end
    
end


Respec.describe ATM do
   context "djj" do
     
    it "123" do
      
    end
   end
end