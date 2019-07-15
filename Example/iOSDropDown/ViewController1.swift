//
//  ViewController1.swift
// //  DropDown
//
//  Created by Jishnu Raj T on 26/04/18.
//  Copyright © 2018 JRiOSdev. All rights reserved.
//

import UIKit
import iOSDropDown

class ViewController1: UIViewController {
    @IBOutlet var customData: [DropDown]!
    @IBOutlet var customView: UIView!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var mainDropDown: DropDown!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      let option =  Options()
       mainDropDown.optionArray = option.countries
        mainDropDown.optionIds = option.ids
        mainDropDown.checkMarkEnabled = false
         cstmbutn.isHidden = true
        customView.isHidden = true
        mainDropDown.didSelect{(selectedText , index , id) in
            self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index) \n Id: \(id)"
        }
        
        mainDropDown.arrowSize = 10
        // Custom DropDown Data
            self.customData[0].optionArray = option.boolData
            self.customData[2].optionArray = option.color
            self.customData[3].optionArray = option.color
            self.customData[4].optionArray = option.height
            self.customData[5].optionArray = option.height
            self.customData[6].optionArray = option.boolData
        self.customData[0].isSearchEnable = false
        self.customData[2].isSearchEnable = false
        self.customData[3].isSearchEnable = false
        self.customData[4].isSearchEnable = false
        self.customData[5].isSearchEnable = false
        self.customData[6].isSearchEnable = false
          //Custom Dropdown didSelect
            
        self.customData[0].didSelect(completion: { (selected, index, id)  in
                self.mainDropDown.isSearchEnable = Bool(selected)!
            })

            self.customData[2].didSelect(completion: { (selected, index, id) in
                if #available(iOS 11.0, *) {
                    self.mainDropDown.selectedRowColor = UIColor(named:selected)!
                } else {
                    // Fallback on earlier versions
                }
            })
            self.customData[3].didSelect(completion: { (selected, index, id) in
                if #available(iOS 11.0, *) {
                    self.mainDropDown.rowBackgroundColor = UIColor(named:selected)!
                } else {
                    // Fallback on earlier versions
                }
            })
            self.customData[4].didSelect(completion: { (selected, index, id) in
                self.mainDropDown.listHeight = CGFloat(Float(selected)!)
            })
            self.customData[5].didSelect(completion: { (selected, index, id) in
                self.mainDropDown.rowHeight = CGFloat(Float(selected)!)
            })
            self.customData[6].didSelect(completion: { (selected, index, id) in
                self.mainDropDown.hideOptionsWhenSelect = Bool(selected)!
            })
        
         segment.addTarget(self, action: #selector(ViewController1.segmentedDidChange(_:)), for: .valueChanged)
        
        
        
    }
    @objc func segmentedDidChange(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        if index == 0 {
            customView.isHidden = true
            cstmbutn.isHidden = false
        }else{
            customView.isHidden = false
           
        }
        
    }

    @IBAction func doneActn(_ sender: Any) {
        customView.isHidden = true
        self.mainDropDown.touchAction()
    }
    
    @IBAction func custmAct(_ sender: Any) {
        customView.isHidden = false
    }
    
    
    @IBOutlet weak var cstmbutn: UIButton!
    
   

}
