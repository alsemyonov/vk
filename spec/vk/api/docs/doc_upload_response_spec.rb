# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/docs/doc_upload_response'

RSpec.describe Vk::API::Docs::DocUploadResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :file }
  end
end
