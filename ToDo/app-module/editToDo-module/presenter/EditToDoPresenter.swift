//
//  EditToDoPresenter.swift
//  ToDo
//
//  Created by EDA BARUTÇU on 13.12.2021.
//


import Foundation

class EditToDoPresenter{
    var editToDoInteractor: PresenterToInteractorEditToDoProtocol?
    var editToDoView: PresenterToViewEditToDoProtocol?
    
}

//MARK: View To Presenter Protocol Stubs

extension EditToDoPresenter:ViewToPresenterEditToDoProtocol{
    func editToDo(_ todo: ToDo) {
        editToDoInteractor?.editToDo(todo)
    }
}

//MARK: Interactor To Presenter Protocol Stubs

extension EditToDoPresenter:InteractorToPresenterEditToDoProtocol{
    func navigate() {
        editToDoView?.navigate()
    }
}
