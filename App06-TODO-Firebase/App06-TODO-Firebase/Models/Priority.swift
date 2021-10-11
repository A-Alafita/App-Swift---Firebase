//
//  Priority.swift
//  App06-TODO-Firebase
//
//  Created by Alumno on 11/10/21.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift

struct Priority:Identifiable, Decodable{
    
    @DocumentID var id: String?
    var category_id : String
    var category: String
    var image:String

    
    enum CodingKeys : String, CodingKey{
        case id
        case category_id
        case category
        case image
    
    }
}
