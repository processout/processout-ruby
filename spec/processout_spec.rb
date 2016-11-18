require "spec_helper"

describe ProcessOut do
  it "has a version number" do
    expect(ProcessOut::VERSION).not_to be nil
  end

  it "creates and fetches an invoice" do
    client = ProcessOut::Client.new("proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_fBjPvkgT8gyKc1SUpy0PfjL7UgsRmUug")

    invoice = client.invoice.new(
      name: "Test invoice",
      amount: "9.99",
      currency: "USD"
    ).create
    expect(invoice.id).not_to be_empty

    invoice2 = client.invoice.find(invoice.id)
    expect(invoice2.id).to eq(invoice.id)
  end

  it "fetches the customers" do
    client = ProcessOut::Client.new("proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_fBjPvkgT8gyKc1SUpy0PfjL7UgsRmUug")

    client.customer.all
  end

  it "creates a subscription for a customer" do
    client = ProcessOut::Client.new("proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_fBjPvkgT8gyKc1SUpy0PfjL7UgsRmUug")

    customer = client.customer.create
    expect(customer.id).not_to be_empty

    sub = client.subscription.new(
      amount: "9.99",
      currency: "USD",
      interval: "1d",
      name: "great subscription"
    ).create(customer.id)
    expect(sub.id).not_to be_empty
  end

  it "expands a customer project and fetches the gateway configurations" do
    client = ProcessOut::Client.new("proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_fBjPvkgT8gyKc1SUpy0PfjL7UgsRmUug")

    customer = client.customer.create({expand: ["project"]})
    expect(customer.project).not_to eq(nil)

    customer.project.fetch_gateway_configurations
  end
end
