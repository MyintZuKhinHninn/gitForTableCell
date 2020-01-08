//
//  ViewController.swift
//  TestTableCellXib
//
//  Created by ThantZin on 2019/05/02.
//  Copyright © 2019 ThantZin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTable: UITableView!
    
    private var employees = [Employee]()
    private var coworkers = [CoWorker]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupEmployeeTable()
        self.initEmployeeInfo()
    }
    
    private func initEmployeeInfo(){
        let employee1 = Employee.init("John", 23, "Bahan", .junior)
        let employee2 = Employee.init("Emma", 22, "Pazuntaung", .junior)
        let employee3 = Employee.init("David", 30, "Mingataung Nyint", .senior)
        let employee4 = Employee.init("Steve", 29, "Tamwe", .resigned)
        let employee5 = Employee.init("Jack", 31, "Bahan", .manager)
        let employee6 = Employee.init("Harry", 21, "Pazuntaung", .resigned)
        let employee7 = Employee.init("Oliver", 28, "Mingataung Nyint", .senior)
        let employee8 = Employee.init("Salsa", 28, "Mingataung Nyint", .senior)
        self.employees.append(employee1)
        self.employees.append(employee2)
        self.employees.append(employee3)
        self.employees.append(employee4)
        self.employees.append(employee5)
        self.employees.append(employee6)
        self.employees.append(employee7)
        self.employees.append(employee8)
        
        self.userTable.reloadData()
    }
    
    private func setupEmployeeTable(){
        self.userTable.delegate = self
        self.userTable.dataSource = self
    }
    
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(self.employees.count > 0){
            return self.employees.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let employee = self.employees[indexPath.row]
       
        if(employee.employeeStatus == EmployeeStatus.resigned){
            let cell = Bundle.main.loadNibNamed("ResignedEmployeeTableViewCell", owner: self, options: nil)?.first as? ResignedEmployeeTableViewCell
            cell?.lblName.text = employee.userName! + " (Resigned)"
            return cell!
        }else{
            let cell = Bundle.main.loadNibNamed("EmployeeTableViewCell", owner: self, options: nil)?.first as? EmployeeTableViewCell
            cell?.lblName.text = employee.userName! + "(Senior)"
            cell?.lblAge.text = employee.age?.description
            return cell!
        }
    }
    
    
}
