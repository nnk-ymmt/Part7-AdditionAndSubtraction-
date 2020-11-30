//
//  AdditionViewController.swift
//  Part7-additionAndSubtraction-
//
//  Created by 山本ののか on 2020/11/30.
//

import UIKit

final class AdditionViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    @IBAction private func calculate(_ sender: Any) {
        guard let num1 = Int(textField1.text ?? ""), let num2 = Int(textField2.text ?? "") else {
            return
        }
        let answer = num1 + num2
        answerLabel.text = String(answer)
        view.endEditing(true)
    }
}
