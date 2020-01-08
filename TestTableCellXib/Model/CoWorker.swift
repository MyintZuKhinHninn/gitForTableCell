//
//  CoWorker.swift
//  TestTableCellXib
//
//  Created by TechFun on 5/2/19.
//  Copyright © 2019 ThantZin. All rights reserved.
//

import Foundation

enum Cname: String{
    case alsakha
    case pug
    case bulldog
    case frenchie
}

class CoWorker{
    public  var name: Cname?
    public var age: Int

    
    init(_ coworkername : Cname,_ age : Int) {
        self.name = coworkername
        self.age = age
    }
}
