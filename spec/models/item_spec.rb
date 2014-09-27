describe Item do
  describe "creation" do
    subject { FactoryGirl.create(:item) }

    describe "associations" do
      it { should belong_to(:item_type) }
    end

    describe "validations" do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:item_type) }
    end
  end
end