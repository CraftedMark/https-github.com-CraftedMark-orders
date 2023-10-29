import SwiftData
import Foundation
import SwiftUI


@Model
final class LineItem: PersistentModel {
    @Attribute(.unique) var id: String
    var wooSignalId: Int
    var name: String
    var productId: Int
    var variationId: Int
    var quantity: Int
    var price: Double
    // Linking the productId to the id field in the Product model
    @Relationship(deleteRule: .nullify, inverse: \Product.id)
    var product: Product
    // Linking the LineItem to the Orders model
    @Relationship(deleteRule: .nullify, inverse: \Orders.lineItems)
    var order: Orders

    init(id: String, wooSignalId: Int, name: String, productId: Int, variationId: Int, quantity: Int, price: Double, order: Orders) {
        self.id = id
        self.wooSignalId = wooSignalId
        self.name = name
        self.productId = productId
        self.variationId = variationId
        self.quantity = quantity
        self.price = price
        self.order = order
    }
}

