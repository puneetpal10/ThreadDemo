//
//  ViewController.swift
//  ThreadDemo
//
//  Created by PuNeet on 07/01/21.
//

import UIKit
/*
 
 Thread           Task
 Serial     +     Sync     Order
 Serial     +     Async    Order
 Concurrent +     Sync     Order
 Concurrent +     Async    UnOrder
 **/
class ViewController: UIViewController {
//Awesome
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.queueTesting()
    }

    func queueTesting(){
        let myQueue = DispatchQueue(label: "puneet.serial.queue", attributes: .concurrent)
        
        //First thread
        
        myQueue.async {
            print("Task 1 started")
            for index in 1...5{
                print("\(index) [Task 1] time 5 is \(index * 5)")
            }
            print("Task 1 Finished")

        }
        
        
        //Second thread
        
        myQueue.async {
            print("Task 2 started")
//            for index in 1...5{
//                print("\(index) [Task 1] time 5 is \(index * 5)")
//                print("Task 1 Finished")
//            }
            print("Task 2 Finished")

        }
    }

}

