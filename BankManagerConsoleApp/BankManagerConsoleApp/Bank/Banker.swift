//
//  Banker.swift
//  BankManagerConsoleApp
//
//  Created by Gundy, jpush on 2022/11/04.
//

import Foundation

struct Banker {
    func work(_ customer: BankCustomer) -> BlockOperation {
        let waitingNumber = customer.waitingNumber
        let workType = customer.type.description
        
        let operation: BlockOperation = BlockOperation {
            print("\(waitingNumber)번 고객 \(workType)업무 시작")
            Thread.sleep(forTimeInterval: customer.type.wasteSeconds)
            print("\(waitingNumber)번 고객 \(workType)업무 완료")
        }
        
        return operation
    }
}
