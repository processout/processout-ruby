require "spec_helper"

describe ProcessOut do
  it "has a version number" do
    expect(ProcessOut::VERSION).not_to be nil
  end

  it "creates and fetches an invoice" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_sandbox_mah31RDFqcDxmaS7MvhDbJfDJvjtsFTB")

    invoice = client.invoice.new(
      name: "Test invoice",
      amount: "9.99",
      currency: "USD"
    ).create
    expect(invoice.id).not_to be_empty

    invoice2 = client.invoice.find(invoice.id)
    expect(invoice2.id).to eq(invoice.id)
  end

  it "captures an invoice and expands the gateway configuration" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_sandbox_mah31RDFqcDxmaS7MvhDbJfDJvjtsFTB")
    
    invoice = client.invoice.new(
      name: "Test invoice",
      amount: "9.99",
      currency: "USD"
    ).create

    gr = ProcessOut::GatewayRequest.new("gway_conf_44ae90db0a62f819a404ef6a8ff994ca", {
      method: "POST", url: "https://processout.com?token=test-valid", body: "", 
        headers: {
          "Content-Type" => "application/json"
        }
      })
    transaction = invoice.capture(gr)
    expect(transaction.status).to eq("completed")

    transaction = transaction.find(transaction.id, {
      expand: ["gateway_configuration"]
    })
    expect(transaction.gateway_configuration.id).not_to be_empty
  end

  it "creates and deletes a customer" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_sandbox_mah31RDFqcDxmaS7MvhDbJfDJvjtsFTB")
    
    customer = client.customer.create
    expect(customer.id).not_to be_empty

    customer.delete
  end

  it "fetches the customers" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_sandbox_mah31RDFqcDxmaS7MvhDbJfDJvjtsFTB")

    client.customer.all
  end

  it "creates a subscription for a customer and updates its metadata" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_sandbox_mah31RDFqcDxmaS7MvhDbJfDJvjtsFTB")

    customer = client.customer.create
    expect(customer.id).not_to be_empty

    sub = client.subscription.new(
      customer_id: customer.id,
      amount: "9.99",
      currency: "USD",
      interval: "1d",
      name: "great subscription"
    ).create()
    expect(sub.id).not_to be_empty

    sub.save(
      metadata: {test: "yeah"}
    )
  end

  it "expands a customer project" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_sandbox_mah31RDFqcDxmaS7MvhDbJfDJvjtsFTB")

    customer = client.customer.create({expand: ["project"]})
    expect(customer.project).not_to eq(nil)
  end

  it "errors when a customer is not found" do
    client = ProcessOut::Client.new("test-proj_gAO1Uu0ysZJvDuUpOGPkUBeE3pGalk3x", 
      "key_sandbox_mah31RDFqcDxmaS7MvhDbJfDJvjtsFTB")

    begin
      client.customer.find("bad")
      expect(true).to eq(false) # Shouldn't be called
    rescue ProcessOut::NotFoundError => e
      expect(e.code).to eq("resource.customer.not-found")
    end
  end
end
