import Foundation
import SwiftUI
import SwiftData


@Model
final class Orders: PersistentModel {
    @Attribute(.unique) var id: String
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
    // Linking the customerId to the id field in the People model
    @Relationship(deleteRule: .nullify, inverse: \People.id)
    var customerId: People
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
   // var metaData: [MetaData]
   // var lineItems: [lineItems]
    //var taxLines: [TaxLines]
    //var shippingLines: [ShippingLines]
    //var feeLines: [FeeLines]
    //var couponLines: [CouponLines]
    //var refunds: [Refunds]
    var _links: Links

    // Adding customer name from People model
    var customerName: String

    @Relationship(deleteRule: .nullify, inverse: \People.orders)
    var people: People

    @Relationship(deleteRule: .nullify, inverse: \LineItem.order)
    var lineItems: [LineItem]

    
    @Relationship(deleteRule: .nullify, inverse: \Product.orders)
    var products: [Product]

    // Adding @Query macro to fetch all orders
    @Query var allOrders: [Orders]

    init(id: String, wooSignalId: Int, orderNumber: Int, status: String, currency: String, dateCreated: Date, dateModified: Date, discountTotal: Double, discountTax: Double, shippingTotal: Double, shippingTax: Double, cartTax: Double, total: Double, totalTax: Double, pricesIncludeTax: Bool, customerId: People, customerIpAddress: String, customerUserAgent: String, customerNote: String, billing: Address, shipping: address, paymentMethod: String, paymentMethodTitle: String, transactionId: String, datePaid: Date?, dateCompleted: Date?, cartHash: String, /*metaData: [MetaData],*/ lineItems: [lineItems], /*taxLines: [TaxLines], shippingLines: [ShippingLines], feeLines: [FeeLines], couponLines: [CouponLines], refunds: [Refunds], _links: Links,*/ customerName: String, people: People, products: [Product]) {
        self.id = id
        self.wooSignalId = wooSignalId
        self.orderNumber = orderNumber
        self.status = status
        self.currency = currency
        self.dateCreated = dateCreated
        self.dateModified = dateModified
        self.discountTotal = discountTotal
        self.discountTax = discountTax
        self.shippingTotal = shippingTotal
        self.shippingTax = shippingTax
        self.cartTax = cartTax
        self.total = total
        self.totalTax = totalTax
        self.pricesIncludeTax = pricesIncludeTax
        self.customerId = customerId
        self.customerIpAddress = customerIpAddress
        self.customerUserAgent = customerUserAgent
        self.customerNote = customerNote
        self.billing = billing
        self.shipping = shipping
        self.paymentMethod = paymentMethod
        self.paymentMethodTitle = paymentMethodTitle
        self.transactionId = transactionId
        self.datePaid = datePaid
        self.dateCompleted = dateCompleted
        self.cartHash = cartHash
//        self.metaData = metaData
        self.lineItems = lineItems
//        self.taxLines = taxLines
//        self.shippingLines = shippingLines
//        self.feeLines = feeLines
//        self.couponLines = couponLines
//        self.refunds = refunds
        self._links = _links
        self.customerName = customerName
        self.people = people
        self.products = products
    }
}


