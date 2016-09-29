# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/pages/methods/get_version'

RSpec.describe Vk::API::Pages::Methods::GetVersion do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :version_id }
    it { is_expected.to include :group_id }
    it { is_expected.to include :user_id }
    it { is_expected.to include :need_html }
  end
end
