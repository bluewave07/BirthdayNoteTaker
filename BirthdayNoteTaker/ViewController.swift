//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Abdulkadir AKYURT on 27.02.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var dateField: UITextField!
    
    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var dateView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            nameView.text = "Name : \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String {
            dateView.text = " Birthday : \(newBirthday)"
        }
        
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(nameField.text!, forKey: "name")
        UserDefaults.standard.set(dateField.text!, forKey: "birthday")
        
        //UserDefaults.standard.synchronize()
        nameView.text = "Name: \(nameField.text!)"
        dateView.text = "Birthday: \(dateField.text!)"
        
    }
    
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameView.text = "Name: "
            
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            dateView.text = "Birthday: "
        }
     
        


    }
    


}

