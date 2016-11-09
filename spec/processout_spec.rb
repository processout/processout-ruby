require "spec_helper"

describe ProcessOut do
  it "has a version number" do
    expect(ProcessOut::VERSION).not_to be nil
  end

  it "creates and fetches an invoice" do
    client = ProcessOut::Client.new("proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_fBjPvkgT8gyKc1SUpy0PfjL7UgsRmUug")
    invoice = client.new_invoice
    invoice.name = "Test invoice"
    invoice.amount = "9.99"
    invoice.currency = "USD"
    invoice = invoice.create
    expect(invoice.id).not_to be_empty

    invoice2 = client.new_invoice.find(invoice.id)
    expect(invoice2.id).to eq(invoice.id)
  end
end
