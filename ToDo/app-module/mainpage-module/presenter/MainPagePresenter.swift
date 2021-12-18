//
//  MainPagePresenter.swift
//  ToDo
//
//  Created by EDA BARUTÇU on 13.12.2021.
//

import Foundation

class MainPagePresenter {
    var mainPageInteractor: PresenterToInteractorMainPageProtocol?
    var mainPageView: PresenterToViewMainPageProtocol?
}

//MARK: View To Presenter Protocol Stubs

extension MainPagePresenter:ViewToPresenterMainPageProtocol{
    
    func load() {
        mainPageInteractor?.loadFromDB()
    }
    
    func search(with keyword : String) {
        mainPageInteractor?.searchDb(with: keyword)
    }
    
    func delete(with id: Int, index:IndexPath) {
        mainPageInteractor?.delete(with: id, index: index)
    }
    
    
}

//MARK: Interactor To Presenter Protocol Stubs

extension MainPagePresenter:InteractorToPresenterMainPageProtocol{
    func sendArray(_ array : Array<ToDo>) {
        mainPageView?.setArray(array)
    }
    
    func sendDeleteAnimation(at indexPath: IndexPath) {
        mainPageView?.deleteAnimation(at: indexPath)
    }
    
    
}
