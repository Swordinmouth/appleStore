//
//  BuyViewController.swift
//  appleStore
//
//  Created by Valery on 09.07.2021.
//

import UIKit

final class BuyViewController: UIViewController {

    //MARK: - Private Properties
    private var userDefaults = UserDefaults.standard
    private var uiPageVc = PregnancyViewController()

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkedByFirstEnter()
    }


    //MARK: - Private Methods
    private func checkedByFirstEnter() {
        let check = userDefaults.bool(forKey: "hasShow")
        if check == false {
            uiPageVc.modalPresentationStyle = .fullScreen
            present(uiPageVc, animated: true)
        }
    }
}

