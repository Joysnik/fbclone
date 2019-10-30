require 'rails_helper'

RSpec.describe Post, type: :model do
 context "Associations" do
		it { should belong_to(:user) }
	end
	
	context "validations" do
		before do
    	@post = FactoryBot.create(:post)
  	end
		it 'invalid when post content is null or empty' do
			post2 = FactoryBot.build(:post, content: nil)
			expect(post2).to_not be_valid
		end

		it 'is valid when post content has value' do
			expect(@post).to be_valid
		end
	end
end
