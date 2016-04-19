//
//  Course.swift
//  NavigationWorkshop
//
//  Created by student on 20/4/16.
//  Copyright © 2016 NguyenTrung. All rights reserved.
//

import Foundation

class Course {
    var courseId: String
    var courseDesc: String
    var lecturer: String
    init(id: String, desc: String, lecturer: String){
        self.courseId = id
        self.courseDesc = desc
        self.lecturer = lecturer
    }
    class func getExistingCourses() -> NSMutableArray {
        let courses = NSMutableArray()
        courses.addObject(Course(id: "S-OOAD", desc: "Object Oriented Analysis and Design", lecturer: "Y K CHia"))
        courses.addObject(Course(id: "S-PMIS", desc: "Project Management for IS", lecturer: "Daniel"))
        courses.addObject(Course(id: "S-JAVA", desc: "Java Programming", lecturer: "Chuck"))
        return courses
        
    }
    
}