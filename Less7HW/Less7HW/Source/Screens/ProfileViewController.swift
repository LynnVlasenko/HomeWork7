//
//  ProfileViewController.swift
//  Less7HW
//ProfileData

//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avaImageView: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var eMailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    private let dataProvider = DataProviderService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loadUserDataButtonAction(_ sender: UIButton) {
        
        dataProvider.loadUserData { data in
            updateUI(with: data)
        }
        
//     ----- First decision -----    //
        
//        let user = dataProvider.loadUserData()
//        updateUI(with: user)
    }
    
    @IBAction func loadAdminDataButtonAction(_ sender: UIButton) {
        
        dataProvider.loadAdminData { data in
            updateUI(with: data)
        }
        
//     ----- First decision -----    //
        
//        let admin = dataProvider.loadAdminData()
//        updateUI(with: admin)
    }
    
    func updateUI(with model: ProfileData) {
        
        avaImageView.image = UIImage(named: model.avatarName)
        firstNameLabel.text = model.firstName
        lastNameLabel.text = model.lastName
        eMailLabel.text = model.eMail
        addressLabel.text = model.address
    }
}
