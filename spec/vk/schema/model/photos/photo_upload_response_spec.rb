# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/photos/photo_upload_response'

RSpec.describe Vk::Schema::Model::Photos::PhotoUploadResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :server }
    it { is_expected.to include :photos_list }
    it { is_expected.to include :aid }
    it { is_expected.to include :hash }
  end
end
