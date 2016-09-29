# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/methods/get_catalog'

RSpec.describe Vk::API::Video::Methods::GetCatalog do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :count }
    it { is_expected.to include :items_count }
    it { is_expected.to include :from }
    it { is_expected.to include :filters }
  end
end
