require "rails_helper"

RSpec.describe OrderMailer, type: :mailer do
  describe "order_confirmation" do
    let(:mail) { OrderMailer.order_confirmation }

    it "renders the headers" do
      expect(mail.subject).to eq("Order confirmation")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "order_in_progress" do
    let(:mail) { OrderMailer.order_in_progress }

    it "renders the headers" do
      expect(mail.subject).to eq("Order in progress")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "order_shipped" do
    let(:mail) { OrderMailer.order_shipped }

    it "renders the headers" do
      expect(mail.subject).to eq("Order shipped")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "order_cancelled" do
    let(:mail) { OrderMailer.order_cancelled }

    it "renders the headers" do
      expect(mail.subject).to eq("Order cancelled")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
