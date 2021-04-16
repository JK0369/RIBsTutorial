//
//  LoggedOutViewController.swift
//  TicTacToe
//
//  Created by 김종권 on 2021/04/16.
//  Copyright © 2021 Uber. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol LoggedOutPresentableListener: class {
    func login(withPlayer1Name player1Name: String?, player2Name: String?)
}

final class LoggedOutViewController: UIViewController, LoggedOutPresentable, LoggedOutViewControllable {

    weak var listener: LoggedOutPresentableListener?
    @IBOutlet weak var player1Field: UITextField!
    @IBOutlet weak var player2Field: UITextField!

    @IBAction func didTapLoginButton(_ sender: Any) {
        listener?.login(withPlayer1Name: player1Field?.text, player2Name: player2Field?.text)
    }

}
