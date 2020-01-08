//
//  Employee.swift
//  TestTableCellXib
//
//  Created by ThantZin on 2019/05/02.
//  Copyright © 2019 ThantZin. All rights reserved.
//

import Foundation

enum EmployeeStatus{
    case resigned
    case manager
    case junior
    case senior
}

class Employee{
    public var userName:String?
    public var age:Int?
    public var address:String?
    public var employeeStatus:EmployeeStatus?
    
    init(){}
    
    init(_ userName:String,_ age:Int,_ address:String,_ employeeStatus:EmployeeStatus){
        self.userName = userName
        self.age = age
        self.address = address
        self.employeeStatus = employeeStatus
    }
}
