# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/search_dialogs'

RSpec.describe Vk::API::Messages::Methods::SearchDialogs do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :q }
    it { is_expected.to include :limit }
    it { is_expected.to include :fields }
  end
end
