//
//  LoggedInViewController.swift
//  TicTacToe
//
//  Created by 김종권 on 2021/04/16.
//  Copyright © 2021 Uber. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol LoggedInPresentableListener: class {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class LoggedInViewController: UIViewController, LoggedInPresentable, LoggedInViewControllable {

    weak var listener: LoggedInPresentableListener?
}
