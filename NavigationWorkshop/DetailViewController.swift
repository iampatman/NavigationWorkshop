//
//  DetailViewController.swift
//  NavigationWorkshop
//
//  Created by student on 20/4/16.
//  Copyright © 2016 NguyenTrung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var lecturerField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    var editingCourse: Course!
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if (editingCourse != nil){
            print("update current course")
            idField.text! = editingCourse.courseId
            descField.text! = editingCourse.courseDesc
            lecturerField.text! = editingCourse.lecturer
            navigationItem.title = editingCourse.courseId
        } else {
            navigationItem.title = "New course"
        }
        
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillAppear(animated)
        if (editingCourse == nil){
            print("new course created")
            editingCourse = Course(id: idField.text!, desc: descField.text!, lecturer: lecturerField.text!)
            
        } else {
            print("updated course")
            editingCourse.courseId = idField.text!
            editingCourse.courseDesc = descField.text!
            editingCourse.lecturer = lecturerField.text!
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

