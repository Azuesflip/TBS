require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  def setup
    @admin = Admin.new(name: "Example User", email: "admin@example.com",
                     password: "foobar", password_confirmation: "foobar")

  end

  test "should be valid" do
    assert @admin.valid?
  end

  test "name should be present" do
    @admin.name = "     "
    assert_not @admin.valid?
  end

	test "email should be present" do
    @admin.email = "     "
    assert_not @admin.valid?
  end

  test "name should not be too long" do
    @admin.name = "a" * 51
    assert_not @admin.valid?
  end

  test "email should not be too long" do
    @admin.email = "a" * 244 + "@example.com"
    assert_not @admin.valid?
  end

  test "password should have a minimum length" do
    @admin.password = @admin.password_confirmation = "a" * 5
    assert_not @admin.valid?
  end

end
