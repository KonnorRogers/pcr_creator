require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  def setup
    @address = Address.new(
      room_number: '5',
      address: '555 test address rd',
      city: 'test city',
      state: 'test state',
      country: 'USA',
      zip_code: '55555'
    )
  end

  test 'should save a new address' do
    assert_difference 'Address.count', 1 do
      @address.save
    end
  end
end

