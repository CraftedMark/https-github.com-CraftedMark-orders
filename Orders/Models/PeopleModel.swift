import Foundation
import SwiftUI
import SwiftData

struct People: Codable, Identifiable {
    var id: String
    var wooSignalId: Int
    var firstName: String
    var lastName: String
    var phone: String
    var email: String
    var brand: String?
    var address1: String?
    var address2: String?
    var city: String?
    var state: String?
    var zip: String?
    var customerBasedPricing: Bool?
    var accountNumber: String?
    var type: String?
    var notes: String?
    var createdDate: Date?
    var createdBy: String?
    var updatedDate: Date?
    var updatedBy: String?
    // Adding customer name to People model
    var customerName: String {
        return "\(firstName) \(lastName)"
    }
}
   // Assuming 'Order' is a model, the corrected code would look like this:
   var orders: [Orders] = []

