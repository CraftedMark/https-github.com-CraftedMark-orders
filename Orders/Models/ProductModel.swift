@Model(remote: true)
struct Product: Codable, Identifiable {
    var id: Int?
    var name: String
    var category: String
    var subCategory: String
    var subcat2: String
    var flavor: String
    var description: String
    var costOfGood: Double
    var manufacturingPrice: Double
    var wholesalePrice: Double
    var retailPrice: Double
    var stockQuantity: Int
    var backordered: Bool
    var supplier: String
    var manufacturerId: Int?
    var manufacturerName: String
    var itemSource: String
    var quantitySold: Int
    var quantityInStock: Int
    var type: String
    var imageUrl: String
    var packageWeightMeasure: String
    var packageWeight: Int
    var weightInGrams: Int
    var bulkPricing: Double?
    var perGramCost: Double
    var isAssemblyItem: Bool
    var dose: String? // Changed dose to String
    var packaging: String?
    var activeIngredient: String? // Added active ingredient

     @Relationship(deleteRule: .nullify, inverse: \Orders.product)
    var orders: [Orders]
}
