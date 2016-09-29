# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/methods/delete_ban'

RSpec.describe Vk::API::Newsfeed::Methods::DeleteBan do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_ids }
    it { is_expected.to include :group_ids }
  end
end
