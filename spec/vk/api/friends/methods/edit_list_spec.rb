# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/methods/edit_list'

RSpec.describe Vk::API::Friends::Methods::EditList do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :name }
    it { is_expected.to include :list_id }
    it { is_expected.to include :user_ids }
    it { is_expected.to include :add_user_ids }
    it { is_expected.to include :delete_user_ids }
  end
end
