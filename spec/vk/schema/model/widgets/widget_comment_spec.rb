# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/widgets/widget_comment'

RSpec.describe Vk::Schema::Model::Widgets::WidgetComment do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :from_id }
    it { is_expected.to include :to_id }
    it { is_expected.to include :date }
    it { is_expected.to include :user }
    it { is_expected.to include :post_type }
    it { is_expected.to include :text }
    it { is_expected.to include :can_delete }
    it { is_expected.to include :media }
    it { is_expected.to include :attachments }
    it { is_expected.to include :post_source }
    it { is_expected.to include :comments }
    it { is_expected.to include :likes }
    it { is_expected.to include :reposts }
  end
end
