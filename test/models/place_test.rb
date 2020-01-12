require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  def setup
    @place = Place.new(
      room_number: '5',
      address: '555 test place rd',
      city: 'test city',
      state: 'test state',
      country: 'USA',
      zip_code: '55555'
    )
  end

  test 'should save a new place' do
    assert_difference 'Place.count', 1 do
      @place.save
    end
  end

  test 'should save a new place without a room number' do
    @place.room_number = '' * 6
    assert_difference 'Place.count', 1 do
      @place.save
    end
  end

  test 'should not save a new place if no address given' do
    @place.address = '' * 6
    assert_no_difference 'Place.count' do
      @place.save
      refute @place.valid?
    end
  end

  test 'should not save a new place if no city given' do
    @place.city = '' * 6
    assert_no_difference 'Place.count' do
      @place.save
      refute @place.valid?
    end
  end
  test 'should not save a new place if no state given' do
    @place.state = '' * 6
    assert_no_difference 'Place.count' do
      @place.save
      refute @place.valid?
    end
  end

  test 'should not save a new place if no country given' do
    @place.country = '' * 6
    assert_no_difference 'Place.count' do
      @place.save
      refute @place.valid?
    end
  end

  test 'should not save a new place if no zip code given' do
    @place.zip_code = '' * 6
    assert_no_difference 'Place.count' do
      @place.save
      refute @place.valid?
    end
  end

  test 'should not save a new place if zip code is not 5 characters' do
    @place.zip_code = '0216'

    @place2 = @place
    @place2.zip_code = '064221'

    assert_no_difference 'Place.count' do
      @place.save
      @place2.save
      refute @place.valid?
      refute @place2.valid?
    end
  end

end

