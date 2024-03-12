//
//  AdminModel+ProfileData.swift
//  Less7HW
//
//  Created by Алина Власенко on 12.03.2024.
//

import Foundation

extension AdminModel: ProfileData {
    
    var avatarName: String { adminAvatarName }
    var firstName: String { adminFirstName }
    var lastName: String { adminLastName }
    var eMail: String { adminEmail }
    var address: String { adminAdderss }
    
}
