# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/get_messages_upload_server'

RSpec.describe Vk::API::Photos::Methods::GetMessagesUploadServer do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

  end
end
