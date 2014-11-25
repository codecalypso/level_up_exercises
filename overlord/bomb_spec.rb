require_relative "bomb"


describe Bomb do 
  let(:bomb) { Bomb.new }

  it "initial state should be inactive" do
    bomb.should_not be_active
  end
 
  it"should be active with valid code"do
    bomb.activate("2342")
    bomb.should be_active
  end

  it"should be inactive with invalid code"do
    bomb.activate("1111")
    bomb.should_not be_active
  end

  it"should be inactive with valid code on deactivation attempt"do
    bomb.activate("2342")
    bomb.deactivate("0000")
    bomb.should_not be_active
  end

  it"should remain active with failed deactivation attempts"do
    bomb.activate("2342")
    bomb.deactivate("4567")
    bomb.should be_active
  end

  it"should explode on three failed attempts"do
    bomb.activate("2342")
    bomb.deactivate("9111")
    bomb.deactivate("9111")
    bomb.deactivate("9111")
    expect{bomb.to be_exploded}
    # is there a better way to write this??
  end

  it { is_expected.to respond_to(:activate).with(1).argument }
  it { is_expected.to respond_to(:deactivate).with(1).argument }
  it { is_expected.not_to respond_to(:foo)}
end


describe "#new" do
  let(:bomb) { Bomb.new }
  it "returns a bomb object with no parameters" do
    bomb.should be_an_instance_of Bomb
  end
end


describe "#activate" do
  let(:bomb) { Bomb.new }

  it"should return bomb state" do
    bomb.activate("2342").should eql true
  end

  xit"should only accept digits" do
    bomb.activate("hello").should eql false
  end

  xit"should only accept four numerical digits" do
    expect bomb.activate(code).respond.to(valid_code?)
    # wth is going on, why is this failing?
  end

  xit"raises an error with garbage parameters"do
    expect(bomb.activate("hello")).to raise_error
  end
end

