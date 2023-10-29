import Foundation
import SwiftUI
import SwiftData

@Model() // SwiftData Model macro
class Product: Codable, Identifiable, PersistentModel { // Conform to PersistentModel
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

    @Query(entity: Orders.self) var orders: [Orders]

    // Initializer for 'Product'
    init(id: Int?, name: String, category: String, subCategory: String, subcat2: String, flavor: String, description: String, costOfGood: Double, manufacturingPrice: Double, wholesalePrice: Double, retailPrice: Double, stockQuantity: Int, backordered: Bool, supplier: String, manufacturerId: Int?, manufacturerName: String, itemSource: String, quantitySold: Int, quantityInStock: Int, type: String, imageUrl: String, packageWeightMeasure: String, packageWeight: Int, weightInGrams: Int, bulkPricing: Double?, perGramCost: Double, isAssemblyItem: Bool, dose: String?, packaging: String?, activeIngredient: String?, orders: [Orders]) {
        self.id = id
        self.name = name
        self.category = category
        self.subCategory = subCategory
        self.subcat2 = subcat2
        self.flavor = flavor
        self.description = description
        self.costOfGood = costOfGood
        self.manufacturingPrice = manufacturingPrice
        self.wholesalePrice = wholesalePrice
        self.retailPrice = retailPrice
        self.stockQuantity = stockQuantity
        self.backordered = backordered
        self.supplier = supplier
        self.manufacturerId = manufacturerId
        self.manufacturerName = manufacturerName
        self.itemSource = itemSource
        self.quantitySold = quantitySold
        self.quantityInStock = quantityInStock
        self.type = type
        self.imageUrl = imageUrl
        self.packageWeightMeasure = packageWeightMeasure
        self.packageWeight = packageWeight
        self.weightInGrams = weightInGrams
        self.bulkPricing = bulkPricing
        self.perGramCost = perGramCost
        self.isAssemblyItem = isAssemblyItem
        self.dose = dose
        self.packaging = packaging
        self.activeIngredient = activeIngredient
        self.orders = orders
    }
}
