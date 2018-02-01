//
//  ViewController.swift
//  mediTrack
//
//  Created by SURA's MacBookAir on 1/1/18.
//  Copyright © 2018 SURA's MacBookAir. All rights reserved.
//

import UIKit



class MedicineViewController: UIViewController,  UIImagePickerControllerDelegate,
UINavigationControllerDelegate {

    var recievedArray : [String] = [String]()
    
    
    // Codes that connect to the storyboard
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var scanMedsBtn: UIButton!
  //  @IBOutlet weak var medicineImages: UIImageView!
    @IBOutlet weak var medicineSearchTB: UITextField!
    
    
    var medicineName : String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Makes the button to have rounded edges
        makeRoundedButton()
    }
    
    func makeRoundedButton(){
        
        searchBtn.layer.cornerRadius = searchBtn.frame.height / 2
        scanMedsBtn.layer.cornerRadius = scanMedsBtn.frame.height / 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func uniqueElementsFrom<T: Hashable>(array: [T]) -> [T] {
        var set = Set<T>()
        let result = array.filter {
            guard !set.contains($0) else {
                return false
            }
            set.insert($0)
            return true
        }
        return result
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        MedicineDataManager().getAllMedication(onComplete: { (Medicine) in
//
//
//    self.recievedArray.append(Medicine.medicineName)
//
//            let uniqueMedicine = self.uniqueElementsFrom(array: self.recievedArray)
                       //     for i in uniqueMedicine {
                    
                             //   if  self.medicineSearchTB.text! == i {
//            if uniqueMedicine.contains(self.medicineSearchTB.text!) == true {
//
        
                                    if (segue.identifier == "destination") {
                                        
                                        let secondViewController = segue.destination as? medicineDetailController;
                                        secondViewController!.medNames = self.medicineSearchTB.text!
                                    }
                           //     }
//                                else {
//                                    print("Wrong Medicine!")
//                                }
    
//                           })
    
      //  }
    
   
    
    }

}
