//
//  LEDBoardViewController.swift
//  LEDBoardPra
//
//  Created by 권민서 on 2022/07/08.
//

import UIKit

class LEDBoardViewController: UIViewController {

    
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hiddenView: UIView!
    @IBOutlet var buttonList: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.numberOfLines = 0
        designButton(sendButton, buttonTitle: "전송", HightlightedTitle: "빨리보내", buttonBackgroundColor: .systemGray)
        designButton(textColorButton, buttonTitle: "색상", HightlightedTitle: "변경중", buttonBackgroundColor: .systemGray)
        designTextField()

        
    }
    
    func designTextField() {
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
        userTextField.font = .systemFont(ofSize: 15)
        userTextField.borderStyle = .none
        userTextField.textColor = .white
    }
    
    //buttonName: Paremaeter
    func designButton(_ buttonName: UIButton, buttonTitle : String, HightlightedTitle : String, buttonBackgroundColor bgColor: UIColor) {
        //함수 호출 연산자()
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(HightlightedTitle, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
    func styleOutletCollection() {
        //1.반복문
        let buttonArrary : [UIButton] = [sendButton, textColorButton]
        
        for item in buttonArrary {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        
        for item in buttonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
    }
  
   
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        
        print(sendButton.currentTitle)
        
        resultLabel.text = userTextField.text
    }
    
    var hideView = false
    
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        
        view.backgroundColor = .blue
        view.endEditing(true)
        
        if hideView == true {
            hiddenView.isHidden = true
        } else {
            hiddenView.isHidden = false
        }
    }
    
    @IBAction func didEndOnExit(_ sender: UITextField) {
        view.endEditing(true)
    }
    
}
