# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/widgets/widget_likes'

RSpec.describe Vk::API::Widgets::WidgetLikes do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :count }
  end
end
