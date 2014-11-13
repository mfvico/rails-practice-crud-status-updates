require 'rails_helper'

describe "Status" do

  it "Statuses can be created" do
    status = Status.new
    status.status = "status"
    status.user = "Titian"
    status.likes = "9001"
    status.valid?
    expect(status.errors.present?).to eq(false)
  end

  it "Statuses cannot be created without all field filled" do
    status = Status.new
    status.valid?
    expect(status.errors.present?).to eq(true)
    status.status = "status"
    status.valid?
    expect(status.errors.present?).to eq(true)
    status.user = "Titian"
    status.valid?
    expect(status.errors.present?).to eq(true)
    status.likes = "9001"
    status.valid?
    expect(status.errors.present?).to eq(false)
  end

  it "statuses cannot be edited to be blank " do
    status = Status.create!(status: "true", user: "dat", likes: "9001")
    status.status=""
    status.valid?
    expect(status.errors.present?).to eq(true)
  end
  

end
