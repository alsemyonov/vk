# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/notes/note_comment'

RSpec.describe Vk::API::Notes::NoteComment do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :uid }
    it { is_expected.to include :nid }
    it { is_expected.to include :oid }
    it { is_expected.to include :date }
    it { is_expected.to include :message }
    it { is_expected.to include :reply_to }
  end
end
