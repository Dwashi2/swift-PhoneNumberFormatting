//
//  ViewController.swift
//  PhoneNumberFormatting
//
//  Created by Daniel Washington Ignacio on 03/06/21.
//


/*
 Create a function that takes an array of 10 numbers (between 0 and 9) and returns a string of those numbers formatted as a phone number (e.g. (555) 555-5555).

 Examples

 formatPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) ➞ "(123) 456-7890"

 formatPhoneNumber([5, 1, 9, 5, 5, 5, 4, 4, 6, 8]) ➞ "(519) 555-4468"

 formatPhoneNumber([3, 4, 5, 5, 0, 1, 2, 5, 2, 7]) ➞ "(345) 501-2527"
 Notes

 Don't forget the space after the closing parenthesis.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      //  print(self.formatPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]))
      //  print(self.formatPhoneNumber([5, 1, 9, 5, 5, 5, 4, 4, 6, 8]))
        print(self.formatPhoneNumber([3, 4, 5, 5, 0, 1, 2, 5, 2, 7]))
    }

    func formatPhoneNumber(_ numbers: [Int]) -> String {
        var result: [String] = []
        result.append("(")
        for n in 0..<numbers.count{
            if n == 3{
                result.append(")")
                result.append(" ")
            }
            if n == 6{
                result.append("-")
            }
            result.append("\(numbers[n])")
        }
        return "\(result.joined())"
    }

}

