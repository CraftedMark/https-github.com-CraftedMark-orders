@Model(remote: true)
struct Orders: Codable, Identifiable {
    var id: String
    var wooSignalId: Int
    var orderNumber: Int
    var status: String
    var currency: String
    var dateCreated: Date
    var dateModified: Date
    var discountTotal: Double
    var discountTax: Double
    var shippingTotal: Double
    var shippingTax: Double
    var cartTax: Double
    var total: Double
    var totalTax: Double
    var pricesIncludeTax: Bool
    var customerId: Int
    var customerIpAddress: String
    var customerUserAgent: String
    var customerNote: String
    var billing: Address
    var shipping: Address
    var paymentMethod: String
    var paymentMethodTitle: String
    var transactionId: String
    var datePaid: Date?
    var dateCompleted: Date?
    var cartHash: String
    var metaData: [MetaData]
    var lineItems: [LineItems]
    var taxLines: [TaxLines]
    var shippingLines: [ShippingLines]
    var feeLines: [FeeLines]
    var couponLines: [CouponLines]
    var refunds: [Refunds]
    var _links: Links

    // Adding customer name from People model
    var customerName: String

   @Relationship(deleteRule: .nullify, inverse: \People.orders)
    var people: People
    
    @Relationship(deleteRule: .nullify, inverse: \Product.orders)
    var products: [Product]
}
