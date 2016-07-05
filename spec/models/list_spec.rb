require 'rails_helper'

RSpec.describe List, type: :model do

  let(:user)    { create(:user) }
  let(:list)    { create(:list) }

  it { is_expected.to belong_to(:user) }

end
