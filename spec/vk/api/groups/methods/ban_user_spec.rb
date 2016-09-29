# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/ban_user'

RSpec.describe Vk::API::Groups::Methods::BanUser do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :user_id }
    it { is_expected.to include :end_date }
    it { is_expected.to include :reason }
    it { is_expected.to include :comment }
    it { is_expected.to include :comment_visible }
  end
end
