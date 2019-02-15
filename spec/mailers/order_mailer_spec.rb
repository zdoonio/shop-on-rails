require "rails_helper"

RSpec.describe OrderMailer, type: :mailer do
  describe "order_confirmation" do
    address = Address.new(first_name: "Jacek", last_name: "Placek", zip_code: "00-001", email: "to@example.org", city: "Warszawa")
    order = Order.new(shipping_cost: 20, address: address)
    let(:mail) { OrderMailer.order_confirmation(order) }

    it "renders the headers" do
      expect(mail.subject).to eq("Dziękujemy za zamówienie")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("")
    end
  end

  describe "order_in_progress" do
    address = Address.new(first_name: "Jacek", last_name: "Placek", zip_code: "00-001", email: "to@example.org", city: "Warszawa")
    order = Order.new(shipping_cost: 20, address: address)
    let(:mail) { OrderMailer.order_in_progress(order) }

    it "renders the headers" do
      expect(mail.subject).to eq("Zamówienie w realizacji")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("")
    end
  end

  describe "order_shipped" do
    address = Address.new(first_name: "Jacek", last_name: "Placek", zip_code: "00-001", email: "to@example.org", city: "Warszawa")
    order = Order.new(shipping_cost: 20, address: address)
    let(:mail) { OrderMailer.order_shipped(order) }

    it "renders the headers" do
      expect(mail.subject).to eq("Zamówienie wysłane")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("")
    end
  end

  describe "order_cancelled" do
    address = Address.new(first_name: "Jacek", last_name: "Placek", zip_code: "00-001", email: "to@example.org", city: "Warszawa")
    order = Order.new(shipping_cost: 20, address: address)
    let(:mail) { OrderMailer.order_cancelled(order) }

    it "renders the headers" do
      expect(mail.subject).to eq("Zamówienie anulowane")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("")
    end
  end

end
