//
//  ViewController.swift
//  MiraclePill
//
//  Created by Kevin Farm on 7/27/16.
//  Copyright © 2016 splashscene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var miraclePillLbl: UILabel!
    @IBOutlet weak var costLbl: UILabel!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var fullNameTxtFld: UITextField!
    @IBOutlet weak var streetAddressLbl: UILabel!
    @IBOutlet weak var streetAddressTxtFld: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxtFld: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateButton: UIButton!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var zipCodeTxtFld: UITextField!
    @IBOutlet weak var nicknameLbl: UILabel!
    @IBOutlet weak var nicknameTxtFld: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var divideLineView: UIView!
    
    let statesArray = ["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.delegate = self
        statePicker.dataSource = self
        
    }

    @IBAction func stateButtonTapped(_ sender: UIButton) {
        statePicker.isHidden = false
        zipCodeLbl.isHidden = true
        zipCodeTxtFld.isHidden = true
        nicknameLbl.isHidden = true
        nicknameTxtFld.isHidden = true
    }
    @IBAction func buyNowButtonTapped(_ sender: UIButton) {
        pillImage.isHidden = true
        miraclePillLbl.isHidden = true
        costLbl.isHidden = true
        divideLineView.isHidden = true
        fullNameLbl.isHidden = true
        fullNameTxtFld.isHidden = true
        streetAddressLbl.isHidden = true
        streetAddressTxtFld.isHidden = true
        cityLbl.isHidden = true
        cityTxtFld.isHidden = true
        stateLbl.isHidden = true
        stateButton.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxtFld.isHidden = true
        nicknameLbl.isHidden = true
        nicknameTxtFld.isHidden = true
        buyNowBtn.isHidden = true
        successImg.isHidden = false
        
    }

}//end ViewController

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return statesArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return statesArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateButton.setTitle(statesArray[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipCodeLbl.isHidden = false
        zipCodeTxtFld.isHidden = false
        nicknameLbl.isHidden = false
        nicknameTxtFld.isHidden = false
    }
}
