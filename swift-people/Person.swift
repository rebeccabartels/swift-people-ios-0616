//
//  Person.swift
//  swift-people
//
//  Created by Rebecca Bartels on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

////name, an immutable String,
//ageInYears, a mutable Int optional,
//skills, an empty mutable Array of Strings,
//qualifiedTutor, a calculated property of type Bool that, for now, simply returns false.

//internal visible method: a method that can only be seen within its scope of its class. So when we make a property private, that's the same as putting it into the .h file in Objective C.


//calculated property: to have something calculated when an object is called on. Whether it's math or interpolation.

class Person {

    
    
    let name: String  //after you initialize a let property it is a readonly property. Before                      initialization, there's no memory allocated to it.
    
    //below are private properties set
    //the setter is private 
    // a property has a setter and getter - instance variables don't. 
    //a property and instance variable are the same thing. If you want to mess with the setter and getter. Set and Get are pieces that make it a property. Setter sets the value. Getter gets the value. 
    //When setting a private set, it's essentially unchangable and is like a let property. Nobody can set it. Setter is on the right side (the value) and the getter is the equal sign and what's it's assigned to.
    
    //private(set) var name: String (private set here) the ability to set on the property.
    // name = "susan"
    
    // Structs create copies. Classes has a reference and doesn't store the actual value.
    //each class should have its own file. The correct way is to have seperate files of your classes. 
    
    //setting a private class makes it inaccessable to other files.
    
    //private set means only class funcs can set it as something. Bc you want it only to be set with your methods. Like a GET count method, it's already set so you don't want anyone to change that and let it do it for you.
    
    
    private(set) var ageInYears: Int? // optional
    
    private(set) var skills = Set<String>()
    //private set var skills is assigned too a set skills
    //set is an array without an order conveyed by word set. <> are format for sets. They're being initialized.
    //get only property -- is same as readonly
    
    //private (set) var qualifiedTutor: Bool = false
    //below is a calculated property with a closure
    // you never have to set it but I can get it.
    
    var qualifiedTutor: Bool { return skills.count >= 4 }
    
    //We want to allow our experienced Persons to help out those who are just starting out. Make the qualifiedTutor calculated property return true if the person knows at least four (4) skills.
  
    
    
    
    
    //designated initializer
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
 
    
//  convenience initializer that takes an argument for name, but not ageInYears. This should call the designated initializer with a nil value for ageInYears, since no information was collected for it.
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
     // default initializer that calls the designated initializer to set the name property to "John Doe" and ageInYears to nil.
    //calls my designated initializer
    //without the arguments is a default but you have to call convenience.
    convenience init() {
        self.init(name: "John Doe")
    }
    
    
    //returns a two-letter string associated to the integer's pronunciation (called an "ordinal"). You will need to use this method to solve this challenge.
    
    
    func celebrateBirthday () -> String {
        
        let message: String
        //if the ageInYears property contains nil, it should return a happy-birthday message, or However, if ageInYears contains an integer value (not nil), this method should add one to the ageInYears property, determine the ordinal for the property's new value, and then return a string that, for Mark's 30th birthday, would read.


        
        if var age = self.ageInYears {
            
//            if ageInYears contains an integer value (not nil), this method should add one to the ageInYears property, determine the ordinal for the property's new value, and then return a string that, for Mark's 30th birthday, would read:
            age++
            self.ageInYears = age
            let ordinal = age.ordinal()
            
            
//     Make sure to upcase the person's name (in string interpolation)
            let message = "HAPPY \(age)\(ordinal.uppercaseString) BIRTHDAY, \(name.uppercaseString)!!!"
            return message
        } else {
            
//            //If the ageInYears property contains nil, it should return a happy-birthday message with the person's name formatted like this for Jenny:
            
            return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
            
        }
        
         return message
    }
//    if mutable var age (of type int) is assigned to self.ageInYears which is of type int Optional, then continue on to the next age with the operator ++.
    //self.ageInYears = age
    //ordinal is equal to age(of type Int).ordinal which is an extension of the ordinal in the Int+Ordinal file.
    

    func learnSkillBash () {
      
        if !skills.contains("bash"){
           skills.insert("bash")
        
        }
        
    }

    func learnSkillXcode () {
        if !skills.contains("Xcode"){
            skills.insert("Xcode")
            
        }
    }
    
    func learnSkillObjectiveC () {
        if !skills.contains("Objective-C"){
            skills.insert("Objective-C")
            print(Person.init().skills)
        }
    }
    
    func learnSkillSwift () {
        if !skills.contains("Swift"){
            skills.insert("Swift")
        }
    }

    func learnSkillInterfaceBuilder () {
        if !skills.contains("Interface Builder"){
            skills.insert("Interface Builder")
        }
      
    }

}


    