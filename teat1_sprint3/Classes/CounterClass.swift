//
//  CounterClass.swift
//  teat1_sprint3
//
//  Created by Vitaly Alekseev on 16.02.2023.
//

import Foundation


public class Counter{
    private var counter: UInt
    private let counterStep: UInt
    private let counterValueString: String = "Значение счётчика: "
    

    init(startValue: UInt, counterStep: UInt) {
        self.counter = startValue
        self.counterStep = counterStep
    }
    
    public func incrementCounterLabel() {
        counter += counterStep
    }
    
    public func getText() -> String {
        return counterValueString + String(self.counter)
    }

    public func getCounter() -> UInt {
        return self.counter
    }
    
}
