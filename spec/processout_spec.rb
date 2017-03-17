require "spec_helper"

describe ProcessOut do
  it "has a version number" do
    expect(ProcessOut::VERSION).not_to be nil
  end

  it "creates and fetches an invoice" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_jqSPvwq3AG5MlYAgqxlwwgOcAC3Zy7d8")

    invoice = client.invoice.new(
      name: "Test invoice",
      amount: "9.99",
      currency: "USD"
    ).create
    expect(invoice.id).not_to be_empty

    invoice2 = client.invoice.find(invoice.id)
    expect(invoice2.id).to eq(invoice.id)
  end

  it "captures an invoice" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_jqSPvwq3AG5MlYAgqxlwwgOcAC3Zy7d8")
    
    invoice = client.invoice.new(
      name: "Test invoice",
      amount: "9.99",
      currency: "USD"
    ).create

    gr = ProcessOut::GatewayRequest.new("sandbox", {
      method: "POST", url: "https://processout.com", body: "{\"token\":\"test-valid\"}", 
        headers: {
          "Content-Type" => "application/json"
        }
      })
    transaction = invoice.capture(gr)
    expect(transaction.status).to eq("completed")
  end

  it "creates and deletes a customer" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_jqSPvwq3AG5MlYAgqxlwwgOcAC3Zy7d8")
    
    customer = client.customer.create
    expect(customer.id).not_to be_empty

    customer.delete
  end

  it "fetches the customers" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_jqSPvwq3AG5MlYAgqxlwwgOcAC3Zy7d8")

    client.customer.all
  end

  it "creates a subscription for a customer and updates its metadata" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_jqSPvwq3AG5MlYAgqxlwwgOcAC3Zy7d8")

    customer = client.customer.create
    expect(customer.id).not_to be_empty

    sub = client.subscription.new(
      amount: "9.99",
      currency: "USD",
      interval: "1d",
      name: "great subscription"
    ).create(customer.id)
    expect(sub.id).not_to be_empty

    sub.save(
      metadata: {test: "yeah"}
    )
  end

  it "expands a customer project and fetches the gateway configurations" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_jqSPvwq3AG5MlYAgqxlwwgOcAC3Zy7d8")

    customer = client.customer.create({expand: ["project"]})
    expect(customer.project).not_to eq(nil)

    customer.project.fetch_gateway_configurations
  end

  it "errors when a customer is not found" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_jqSPvwq3AG5MlYAgqxlwwgOcAC3Zy7d8")

    begin
      client.customer.find("bad")
      expect(true).to eq(false) # Shouldn't be called
    rescue ProcessOut::NotFoundError => e
      expect(e.code).to eq("resource.customer.not-found")
    end
  end
end
