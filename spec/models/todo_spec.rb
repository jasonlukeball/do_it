require 'rails_helper'

RSpec.describe Todo, type: :model do

  let(:user)    { create(:user) }
  let(:list)    { create(:user) }
  let(:todo)    { create(:todo) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:list) }

  end
