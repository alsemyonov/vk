# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/photos/message_upload_response'

RSpec.describe Vk::Schema::Model::Photos::MessageUploadResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :server }
    it { is_expected.to include :photo }
    it { is_expected.to include :hash }
  end
end
