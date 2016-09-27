# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/messages/chat_full'

RSpec.describe Vk::Schema::Model::Messages::ChatFull do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :type }
    it { is_expected.to include :admin_id }
    it { is_expected.to include :users }
    it { is_expected.to include :push_settings }
    it { is_expected.to include :photo_50 }
    it { is_expected.to include :photo_100 }
    it { is_expected.to include :photo_200 }
  end
end
