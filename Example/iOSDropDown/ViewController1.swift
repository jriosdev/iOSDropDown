//
//  ViewController1.swift
// //  DropDown
//
//  Created by Jishnu Raj T on 26/04/18.
//  Copyright © 2018 JRiOSdev. All rights reserved.
//

import iOSDropDown
import UIKit

class ViewController1: UIViewController {
    @IBOutlet var customData: [DropDown]!
    @IBOutlet var customView: UIView!
    @IBOutlet var segment: UISegmentedControl!
    @IBOutlet var valueLabel: UILabel!
    @IBOutlet var mainDropDown: DropDown!

    override func viewDidLoad() {
        super.viewDidLoad()
        let option = Options()
        mainDropDown.optionArray = option.countries
        mainDropDown.optionIds = option.ids
        mainDropDown.checkMarkEnabled = false
        mainDropDown.showScrollBarAlways = true
        mainDropDown.isMultiSelectEnabled = true
        mainDropDown.isSearchEnable = false
        mainDropDown.semanticContentAttribute = .forceRightToLeft
        mainDropDown.textColor = .red
        cstmbutn.isHidden = true
        customView.isHidden = true
        mainDropDown.didSelect { selectedText, index, id in
            self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index) \n Id: \(id)"
        }
        
        mainDropDown.didSelectMulti { text, indexes, ids in
            self.valueLabel.text = "Selected : \(text.joined(separator: ", ")) \n \(indexes) \n \(ids)"
        }
        
        

        mainDropDown.arrowSize = 10
        // Custom DropDown Data
        customData[0].optionArray = option.boolData
        customData[2].optionArray = option.color
        customData[3].optionArray = option.color
        customData[4].optionArray = option.height
        customData[5].optionArray = option.height
        customData[6].optionArray = option.boolData
        customData[0].isSearchEnable = false
        customData[2].isSearchEnable = false
        customData[3].isSearchEnable = false
        customData[4].isSearchEnable = false
        customData[5].isSearchEnable = false
        customData[6].isSearchEnable = false
        // Custom Dropdown didSelect

        customData[0].didSelect(completion: { selected, _, _ in
            self.mainDropDown.isSearchEnable = Bool(selected)!
        })

        customData[2].didSelect(completion: { selected, _, _ in
            if #available(iOS 11.0, *) {
                self.mainDropDown.selectedRowColor = UIColor(named: selected)!
            } else {
                // Fallback on earlier versions
            }
        })
        customData[3].didSelect(completion: { selected, _, _ in
            if #available(iOS 11.0, *) {
                self.mainDropDown.rowBackgroundColor = UIColor(named: selected)!
            } else {
                // Fallback on earlier versions
            }
        })
        customData[4].didSelect(completion: { selected, _, _ in
            self.mainDropDown.listHeight = CGFloat(Float(selected)!)
        })
        customData[5].didSelect(completion: { selected, _, _ in
            self.mainDropDown.rowHeight = CGFloat(Float(selected)!)
        })
        customData[6].didSelect(completion: { selected, _, _ in
            self.mainDropDown.hideOptionsWhenSelect = Bool(selected)!
        })

        segment.addTarget(self, action: #selector(ViewController1.segmentedDidChange(_:)), for: .valueChanged)
    }

    @objc func segmentedDidChange(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        if index == 0 {
            customView.isHidden = true
            cstmbutn.isHidden = false
        } else {
            customView.isHidden = false
        }
    }

    @IBAction func doneActn(_ sender: Any) {
        customView.isHidden = true
        mainDropDown.touchAction()
    }

    @IBAction func custmAct(_ sender: Any) {
        customView.isHidden = false
    }

    @IBOutlet var cstmbutn: UIButton!
}
