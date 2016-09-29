# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/polls/methods/edit'

RSpec.describe Vk::API::Polls::Methods::Edit do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :poll_id }
    it { is_expected.to include :question }
    it { is_expected.to include :add_answers }
    it { is_expected.to include :edit_answers }
    it { is_expected.to include :delete_answers }
  end
end
