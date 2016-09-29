# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/pages/methods/get'

RSpec.describe Vk::API::Pages::Methods::Get do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :page_id }
    it { is_expected.to include :global }
    it { is_expected.to include :site_preview }
    it { is_expected.to include :title }
    it { is_expected.to include :need_source }
    it { is_expected.to include :need_html }
  end
end
