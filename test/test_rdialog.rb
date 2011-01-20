require File.dirname(__FILE__) + '/test_helper.rb'

class TestRdialog < Test::Unit::TestCase

  def setup
    @dialog = RDialog.new
    @dialog.title = 'foo'
  end

  def test_yesno
    assert @dialog.yesno('please answer YES'), 'did you really answer YES?!'
    assert !@dialog.yesno('please answer NO'), 'did you really answer NO?!'
  end

  def test_textbox
    assert @dialog.textbox('test/test_helper.rb')
  end

end
