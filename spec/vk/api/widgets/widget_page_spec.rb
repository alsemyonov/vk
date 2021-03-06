# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/widgets/widget_page'

RSpec.describe Vk::API::Widgets::WidgetPage do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :title }
    it { is_expected.to include :description }
    it { is_expected.to include :photo }
    it { is_expected.to include :url }
    it { is_expected.to include :likes }
    it { is_expected.to include :comments }
    it { is_expected.to include :date }
    it { is_expected.to include :page_id }
  end
end
