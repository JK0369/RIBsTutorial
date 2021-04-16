//
//  LoggedInRouter.swift
//  TicTacToe
//
//  Created by 김종권 on 2021/04/16.
//  Copyright © 2021 Uber. All rights reserved.
//

import RIBs

protocol LoggedInInteractable: Interactable {
    var router: LoggedInRouting? { get set }
    var listener: LoggedInListener? { get set }
}

final class LoggedInRouter: Router<LoggedInInteractable>, LoggedInRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: LoggedInInteractable) {
        super.init(interactor: interactor)
        interactor.router = self
    }
}
