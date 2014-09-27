describe ItemType do
  describe "creation" do
    subject { FactoryGirl.create(:item_type) }

    describe "associations" do
      it { should have_many(:items) }
    end

    describe "validations" do
      it { should validate_presence_of(:name) }
    end
  end

  describe "item_count" do
    let!(:item_type) { FactoryGirl.create(:item_type) }
    let!(:item_1) { FactoryGirl.create(:item, item_type: item_type) }
    let!(:item_2) { FactoryGirl.create(:item, item_type: item_type) }
    let!(:item_3) { FactoryGirl.create(:item) }
    subject { item_type.item_count }

    it { should eq 2 }
    it { should be_an Integer }
  end
end