# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/widgets/methods/get_comments'

RSpec.describe Vk::API::Widgets::Methods::GetComments do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :widget_api_id }
    it { is_expected.to include :url }
    it { is_expected.to include :page_id }
    it { is_expected.to include :order }
    it { is_expected.to include :fields }
    it { is_expected.to include :count }
  end
end
