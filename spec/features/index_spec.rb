require 'rails_helper'

RSpec.describe "for testing" do
  before :each do
    @member1 = Member.create!(name: "Name1")
    @member2 = Member.create!(name: "Name2")
    @member3 = Member.create!(name: "Name3")
    @member4 = Member.create!(name: "Name4")
    @member5 = Member.create!(name: "Name5")
    @member6 = Member.create!(name: "Name6")
    @member7 = Member.create!(name: "Name7")
    @member8 = Member.create!(name: "Name8")

    @meeting1 = Meeting.create!(member1: @member1, member2: @member2)
    @meeting2 = Meeting.create!(member1: @member2, member2: @member1)
    @meeting3 = Meeting.create!(member1: @member1, member2: @member3)
    @meeting4 = Meeting.create!(member1: @member4, member2: @member3)
    @meeting5 = Meeting.create!(member1: @member8, member2: @member1)
    @meeting6 = Meeting.create!(member1: @member1, member2: @member4)
  end

  describe "something" do
    it "test" do
      require "pry"; binding.pry

       Meeting.where(member1: "#{@member1.id}").or(Meeting.where(member2: "#{@member1.id}"))
    end
  end
end
