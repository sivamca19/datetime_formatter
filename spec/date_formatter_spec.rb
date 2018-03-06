require 'active_record'
RSpec.describe DateFormatter do

  let(:active_record) { Class.new(ActiveRecord::Base) }

  it "has a version number" do
    expect(DateFormatter::VERSION).not_to be nil
  end

  it "has date formatter should return hash" do
    hash = {:created_at=>"%d/%m/%Y", :updated_at=>"%d/%m/%Y"}
    expect(active_record.has_date_formatter).to eq(hash)
  end

  it "has date formatter should return hash" do
    hash = {name: "%d/%m/%y", :created_at=>"%d/%m/%Y", :updated_at=>"%d/%m/%Y"}
    expect(active_record.has_date_formatter custom_format: {name: '%d/%m/%y'}).to eq(hash)
  end
end
