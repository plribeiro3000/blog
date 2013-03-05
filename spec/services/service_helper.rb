module ServiceHelper
  def mocked_class
    Class
  end

  def mocked_object
    mock(Object.new)
  end

  def null_object
    mocked_object.as_null_object
  end

  def controller
    mocked_class
  end
end
