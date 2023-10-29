import swiftui
import foundation
import swiftdata


@Model
final class LineItem: PersistentModel {
    @Attribute(.unique) var id: String
    var wooSignalId: Int
    var name: String
    var productId: Int
    var variationId: Int
    var quantity: Int
    var price: Double
}

