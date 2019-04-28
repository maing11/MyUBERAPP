//
//  DataService.swift
//  MyUBER
//
//  Created by Mai Nguyen on 4/27/19.
//  Copyright © 2019 Mai Nguyen. All rights reserved.
//

import Foundation
import Firebase


 let DB_BASE = Database.database().reference()

class DataService {
    static let instance = DataService()
    private var  _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_DRIVERS = DB_BASE.child("drivers")
    private var _REF_TRIPS = DB_BASE.child("trips")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    var REF_DRIVERS: DatabaseReference {
        return _REF_DRIVERS
    }
    var REF_TRIP: DatabaseReference {
        return _REF_TRIPS
        
    }
    
    func creatFirebaseDBUser(uid: String, userData: Dictionary<String,Any>,isDriver: Bool ) {
        if isDriver {
            return REF_DRIVERS.child(uid).updateChildValues(userData)
        } else {
            REF_USERS.child(uid).updateChildValues(userData)
        }
    }
    
}
