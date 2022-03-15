require_relative '../classes/author'

require 'yaml'

describe Author do
  before :each do
    @author = Author.new 'Luis', 'Armstrong'
  end

  it '@author should be an instance of Author class' do
    expect(@author).to be_an_instance_of Author
  end

  it 'author first name to be "Luis"' do
    @first_name == 'Luis'
  end

  it 'author last name to be "Armstrong"' do
    @last_name == 'Armstrong'
  end
end