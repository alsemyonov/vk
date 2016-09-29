# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/methods/save_list'

RSpec.describe Vk::API::Newsfeed::Methods::SaveList do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :list_id }
    it { is_expected.to include :title }
    it { is_expected.to include :source_ids }
    it { is_expected.to include :no_reposts }
  end
end
