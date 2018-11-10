RSpec.describe Slugrust do
  it 'works' do
    expect('Hello world'.slugify).to eql('hello-world')
  end

  it 'handles foreign languages' do
    expect('胡弓'.slugify).to eql('hu-gong')
  end
end
