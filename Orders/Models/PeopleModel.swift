import Foundation
import SwiftUI
import SwiftData

@Model() class People: PersistentModel, Codable, Identifiable {
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
    var address: Address {
    return Address(id: id, street: address1 ?? "", city: city ?? "", state: state ?? "", zip: zip ?? "")
    }
    // Assuming 'Order' is a model, the corrected code would look like this:
    var orders: [Orders] = []

    init(id: String, wooSignalId: Int, firstName: String, lastName: String, phone: String, email: String, brand: String?, address1: String?, address2: String?, city: String?, state: String?, zip: String?, customerBasedPricing: Bool?, accountNumber: String?, type: String?, notes: String?, createdDate: Date?, createdBy: String?, updatedDate: Date?, updatedBy: String?) {
        self.id = id
        self.wooSignalId = wooSignalId
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        self.email = email
        self.brand = brand
        self.address1 = address1
        self.address2 = address2
        self.city = city
        self.state = state
        self.zip = zip
        self.customerBasedPricing = customerBasedPricing
        self.accountNumber = accountNumber
        self.type = type
        self.notes = notes
        self.createdDate = createdDate
        self.createdBy = createdBy
        self.updatedDate = updatedDate
        self.updatedBy = updatedBy
    }
}
