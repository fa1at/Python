require 'caffeinate.rb'

Given('Maria orders ${int} of coffee from Linda') do |int|
    # Given('Maria orders ${float} of coffee from Linda') do |float|
      @maria = Customer.new
      @linda = Associate.new
      @price = int
      @card_minimum = 2
      @maria.orders
    end
    
    When('Maria pays with the credit card') do
      @maria.pays_with_credit
    end
    
    Then('Linda should process the payment') do
      expect(@linda.process_payment(@price, @card_minimum)).to include(true)
    end

    Then('Linda should not process the payment') do
        expect(@linda.process_payment(@price, @card_minimum)).to include(false)
        expect(@linda.process_payment(@price, @card_minimum)).to include('request_cash')
      end