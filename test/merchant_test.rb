require_relative 'test_helper'
require_relative '../lib/merchant'

class MerchantTest < Minitest::Test

  def test_it_exists
    merchant = Merchant.new({:id         => 5, 
                             :name       => "Turing School", 
                             :created_at => Time.now, 
                             :updated_at => Time.now})

    assert_instance_of Merchant, merchant
  end

  def test_it_has_attributes
    merchant = Merchant.new({:id        => 5, 
                             :name       => "Turing School", 
                             :created_at => Time.now, 
                             :updated_at => Time.now})

    assert_equal 5, merchant.id
    assert_equal "Turing School", merchant.name
  end


end
