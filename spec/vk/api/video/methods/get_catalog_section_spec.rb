# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/methods/get_catalog_section'

RSpec.describe Vk::API::Video::Methods::GetCatalogSection do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :section_id }
    it { is_expected.to include :from }
    it { is_expected.to include :count }
  end
end
