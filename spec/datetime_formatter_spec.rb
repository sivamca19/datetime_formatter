require 'active_record'
RSpec.describe DatetimeFormatter do

  let(:active_record) { Class.new(ActiveRecord::Base) }

  it "has a version number" do
    expect(DatetimeFormatter::VERSION).not_to be nil
  end

  it "has date formatter should return hash" do
    hash = {:created_at=>"%d/%m/%Y", :updated_at=>"%d/%m/%Y"}
    expect(active_record.has_datetime_formatter).to eq(hash)
  end

  it "has date formatter should return hash" do
    hash = {name: "%d/%m/%y", :created_at=>"%d/%m/%Y", :updated_at=>"%d/%m/%Y"}
    expect(active_record.has_datetime_formatter custom_format: {name: '%d/%m/%y'}).to eq(hash)
  end
end
