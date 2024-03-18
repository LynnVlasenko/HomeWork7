//
//  UserModel+ProfileData.swift
//  Less7HW
//
//  Created by Алина Власенко on 12.03.2024.
//

import Foundation

extension UserModel: ProfileData {
    
    var avatarName: String { userAvatarName }
    var firstName: String { userFirstName }
    var lastName: String { userLastName }
    var eMail: String { userEmail }
    var address: String { userAdderss }
    
}
