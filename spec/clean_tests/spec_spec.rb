# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Specs" do
  context "post_spec.rb" do
    it "does not use let" do
      File.open("spec/models/post_spec.rb") do |file|
        expect(file.grep(/let\(/)).to eq []
        expect(file.grep(/let!\(/)).to eq []
      end
    end

    it "does not invoke new" do
      File.open("spec/models/post_spec.rb") do |file|
        expect(file.grep(/Post.new/)).to eq []
        expect(file.grep(/described_class.new/)).to eq []
      end
    end
  end

  context "author_spec.rb" do
    it "does not invoke Author.new" do
      File.open("spec/models/author_spec.rb") do |file|
        expect(file.grep(/Author.new/)).to eq []
        expect(file.grep(/described_class.new/)).to eq []
      end
    end

    it "does not invoke Author.create" do
      File.open("spec/models/author_spec.rb") do |file|
        expect(file.grep(/Author.create/)).to eq []
        expect(file.grep(/described_class.create/)).to eq []
      end
    end
  end
end
