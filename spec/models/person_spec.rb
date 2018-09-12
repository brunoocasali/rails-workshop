RSpec.describe 'My spectation', type: :model do
  subject { Person.new }

  it 'has some attributes' do
    expect(subject).to respond_to(:name)
    expect(subject).to respond_to(:email)
  end

  context 'validations' do
    let(:email) { 'my@email.com' }
    let(:name) { 'The Name' }
    let(:person) { Person.new(email: email, name: name) }

    describe '#email' do
      context 'when invalid' do
        let(:email) { nil }

        it 'returns invalid message' do
          subject.valid?

          expect(subject.errors).to_not be_blank
        end
      end
    end
  end
end
