# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/likes/methods/get_list'

RSpec.describe Vk::API::Likes::Methods::GetList do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :item_id }
    it { is_expected.to include :page_url }
    it { is_expected.to include :filter }
    it { is_expected.to include :friends_only }
    it { is_expected.to include :extended }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :skip_own }
  end
end
