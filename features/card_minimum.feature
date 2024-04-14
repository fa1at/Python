Feature: Card Minimum

    Scenario: Total charge is over the $2 credit card minimum
    Given Maria orders $3 of coffee from Linda
    # And the total charge is over the card minimum (another test)
    When Maria pays with the credit card
    Then Linda should process the payment

    Scenario: Total charge is over the $2 credit card minimum
    Given Maria orders $1 of coffee from Linda
    When Maria pays with the credit card
    Then Linda should not process the payment