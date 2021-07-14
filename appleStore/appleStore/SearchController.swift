//
//  SearchController.swift
//  appleStore
//
//  Created by Valery on 09.07.2021.
//

import UIKit

final class SearchController: UIViewController {

    //MARK: - Visual Componetnts
    private var searchLabel = UILabel()
    private var searchTextField = UITextField()
    private var recentlyViewedLabel = UILabel()
    private var clearLabel = UILabel()
    private var queryOptionsLabel = UILabel()

    private var airPodsLabel = UILabel()
    private var appleCareLabel = UILabel()
    private var beatsLabel = UILabel()
    private var iphoneLabel = UILabel()

    private var airPodsSearchImageView = UIImageView()
    private var appleCareSearchImageView = UIImageView()
    private var beatsSearchImageView = UIImageView()
    private var iphoneSearchImageView = UIImageView()

    private var bottomLineAirPodsView = UIView()
    private var bottomLineAappleCareView = UIView()
    private var bottomLineBeatsView = UIView()
    private var bottomLineIphoneView = UIView()

    private var macBookCaseView = UIView()
    private var strapView = UIView()
    private var brownCaseView = UIView()
    private var iPhoneView = UIView()

    private var macBookCaseImageView = UIImageView(image: UIImage(named: "чехол"))
    private var secondMacBookCaseImageView = UIImageView(image: UIImage(named: "чехол2"))
    private var thirdMacBookCaseImageView = UIImageView(image: UIImage(named: "чехол3"))

    private var strapImageView = UIImageView(image: UIImage(named: "ремешок"))
    private var secondStrapImageView = UIImageView(image: UIImage(named: "ремешок2"))
    private var thirdStrapImageView = UIImageView(image: UIImage(named: "ремешок3"))

    private var brownCaseImageView = UIImageView(image: UIImage(named: "коричневый чехол"))
    private var secondBrownCaseImageView = UIImageView(image: UIImage(named: "коричневый чехол2"))
    private var thirdBrownCaseImageView = UIImageView(image: UIImage(named: "коричневый чехол3"))

    private var iPhoneImageView = UIImageView(image: UIImage(named: "айфон"))
    private var secondIPhoneImageView = UIImageView(image: UIImage(named: "айфон2"))
    private var thirdIPhoneImageView = UIImageView(image: UIImage(named: "айфон3"))

    private var macBookLabel = UILabel()
    private var strapLabel = UILabel()
    private var brownCaseLabel = UILabel()
    private var iPhoneLabel = UILabel()


    private var stuffScrollView = UIScrollView()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setupViews()
        navigationController?.navigationBar.isHidden = true
    }

    //MARK: - Private Methods
    private func setupViews() {
        createSearchLabel()
        createSearchTextField()
        createRecentlyViewedLabel()
        createClearLabel()
        createQueryOptionsLabel()
        createAirPodsLabel()
        createAirPodsSearchImageView()
        createAppleCareLabel()
        createAppleCareSearchImageView()
        createBeatsLabel()
        createBeatsSearchImageView()
        createIphoneLabel()
        createIphoneSearchImageView()
        createMacBookCaseView()
        createStrapView()
        createBrownCaseView()
        createMacBookCaseImage()
        createStrapImage()
        createBrownCaseImage()
        createMacBookLabel()
        createStrapLabel()
        createBrownCaseLabel()
        createBottomLineAirPodsView()
        createBottomLineAppleCareView()
        createBottomLineBeatsView()
        createBottomLineIphoneView()
        createIphoneView()
        createIphoneImage()
        createIphoneLable()
        createStuffScrollView()
    }

    private func createSearchLabel() {
        searchLabel.frame = CGRect(x: 10, y: 110, width: 200, height: 30)
        searchLabel.text = "Поиск"
        searchLabel.textColor = .white
        searchLabel.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        searchLabel.textAlignment = .left
        view.addSubview(searchLabel)
    }

    private func createSearchTextField() {
        searchTextField.frame = CGRect(x: 10, y: 150, width: 350, height: 30)
        searchTextField.attributedPlaceholder = NSAttributedString(string: " Поиск по продуктам и магазинам", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        searchTextField.backgroundColor = UIColor(named: "myColour")
        searchTextField.layer.cornerRadius = 10
        searchTextField.leftView = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        searchTextField.leftView?.tintColor = .gray
        searchTextField.leftViewMode = .always
        view.addSubview(searchTextField)
    }

    private func createRecentlyViewedLabel() {
        recentlyViewedLabel.frame = CGRect(x: 10, y: 235, width: 300, height: 30)
        recentlyViewedLabel.text = "Недавно просмотренные"
        recentlyViewedLabel.textColor = .white
        recentlyViewedLabel.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        recentlyViewedLabel.textAlignment = .left
        view.addSubview(recentlyViewedLabel)
    }

    private func createClearLabel() {
        clearLabel.frame = CGRect(x: 320, y: 235, width: 100, height: 30)
        clearLabel.text = "Очистить"
        clearLabel.textColor = .blue
        clearLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        clearLabel.textAlignment = .left
        view.addSubview(clearLabel)
    }

    private func createQueryOptionsLabel() {
        queryOptionsLabel.frame = CGRect(x: 10, y: 500, width: 300, height: 40)
        queryOptionsLabel.text = "Варианты запросов"
        queryOptionsLabel.textColor = .white
        queryOptionsLabel.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        queryOptionsLabel.textAlignment = .left
        view.addSubview(queryOptionsLabel)
    }

    private func createAirPodsLabel() {
        airPodsLabel.frame = CGRect(x: 40, y: 550, width: 350, height: 30)
        airPodsLabel.text = "AirPods"
        airPodsLabel.textColor = .white
        airPodsLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        airPodsLabel.textAlignment = .left
        view.addSubview(airPodsLabel)
    }

    private func createAirPodsSearchImageView() {
        airPodsSearchImageView = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        airPodsSearchImageView.frame = CGRect(x: 10, y: 553, width: 20, height: 20)
        airPodsSearchImageView.tintColor = .gray
        view.addSubview(airPodsSearchImageView)
    }

    private func createAppleCareLabel() {
        appleCareLabel.frame = CGRect(x: 40, y: 590, width: 350, height: 30)
        appleCareLabel.text = "AppleCare"
        appleCareLabel.textColor = .white
        appleCareLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        appleCareLabel.textAlignment = .left
        view.addSubview(appleCareLabel)
    }

    private func createAppleCareSearchImageView() {
        appleCareSearchImageView = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        appleCareSearchImageView.frame = CGRect(x: 10, y: 593, width: 20, height: 20)
        appleCareSearchImageView.tintColor = .gray
        view.addSubview(appleCareSearchImageView)
    }

    private func createBeatsLabel() {
        beatsLabel.frame = CGRect(x: 40, y: 630, width: 350, height: 30)
        beatsLabel.text = "Beats"
        beatsLabel.textColor = .white
        beatsLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        beatsLabel.textAlignment = .left
        view.addSubview(beatsLabel)
    }

    private func createBeatsSearchImageView() {
        beatsSearchImageView = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        beatsSearchImageView.frame = CGRect(x: 10, y: 633, width: 20, height: 20)
        beatsSearchImageView.tintColor = .gray
        view.addSubview(beatsSearchImageView)
    }

    private func createIphoneLabel() {
        iphoneLabel.frame = CGRect(x: 40, y: 670, width: 350, height: 30)
        iphoneLabel.text = "Сравните модели Iphone"
        iphoneLabel.textColor = .white
        iphoneLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        iphoneLabel.textAlignment = .left
        view.addSubview(iphoneLabel)
    }

    private func createIphoneSearchImageView() {
        iphoneSearchImageView = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        iphoneSearchImageView.frame = CGRect(x: 10, y: 673, width: 20, height: 20)
        iphoneSearchImageView.tintColor = .gray
        view.addSubview(iphoneSearchImageView)
    }

    private func createBottomLineAirPodsView() {
        bottomLineAirPodsView.frame = CGRect(x: 15, y: 585, width: 380, height: 0.3)
        bottomLineAirPodsView.backgroundColor = .white
        view.addSubview(bottomLineAirPodsView)
    }

    private func createBottomLineAppleCareView() {
        bottomLineAappleCareView.frame = CGRect(x: 15, y: 625, width: 380, height: 0.3)
        bottomLineAappleCareView.backgroundColor = .white
        view.addSubview(bottomLineAappleCareView)
    }

    private func createBottomLineBeatsView() {
        bottomLineBeatsView.frame = CGRect(x: 15, y: 662, width: 380, height: 0.3)
        bottomLineBeatsView.backgroundColor = .white
        view.addSubview(bottomLineBeatsView)
    }

    private func createBottomLineIphoneView() {
        bottomLineIphoneView.frame = CGRect(x: 15, y: 702, width: 380, height: 0.3)
        bottomLineIphoneView.backgroundColor = .white
        view.addSubview(bottomLineIphoneView)
    }

    private func createMacBookCaseView() {
        macBookCaseView.frame = CGRect(x: 0, y: 300, width: 130, height: 180)
        macBookCaseView.backgroundColor = .darkGray
        macBookCaseView.layer.cornerRadius = 20
        view.addSubview(macBookCaseView)
    }

    private func createStrapView() {
        strapView.frame = CGRect(x: 140, y: 300, width: 130, height: 180)
        strapView.backgroundColor = .darkGray
        strapView.layer.cornerRadius = 20
        view.addSubview(strapView)
    }

    private func createBrownCaseView() {
        brownCaseView.frame = CGRect(x: 280, y: 300, width: 130, height: 180)
        brownCaseView.backgroundColor = .darkGray
        brownCaseView.layer.cornerRadius = 20
        view.addSubview(brownCaseView)
    }

    private func createIphoneView() {
        iPhoneView.frame = CGRect(x: 420, y: 300, width: 130, height: 180)
        iPhoneView.backgroundColor = .darkGray
        iPhoneView.layer.cornerRadius = 20
        view.addSubview(iPhoneView)
    }

    private func createMacBookCaseImage() {
        macBookCaseImageView.tag = 1
        macBookCaseImageView.isUserInteractionEnabled = true
        let firstGesture = UITapGestureRecognizer(target: self, action: #selector(showChoseStuffView(sender:)))
        macBookCaseImageView.addGestureRecognizer(firstGesture)
        macBookCaseImageView.frame = CGRect(x: 15, y: 15, width: 100, height: 100)
        macBookCaseImageView.contentMode = .scaleAspectFit
        macBookCaseView.addSubview(macBookCaseImageView)
    }

    private func createStrapImage() {
        strapImageView.tag = 2
        strapImageView.isUserInteractionEnabled = true
        let secondGesture = UITapGestureRecognizer(target: self, action: #selector(showChoseStuffView(sender:)))
        strapImageView.addGestureRecognizer(secondGesture)
        strapImageView.frame = CGRect(x: 15, y: 15, width: 100, height: 100)
        strapImageView.contentMode = .scaleAspectFit
        strapView.addSubview(strapImageView)
    }

    private func createBrownCaseImage() {
        brownCaseImageView.tag = 3
        brownCaseImageView.isUserInteractionEnabled = true
        let thirdGesture = UITapGestureRecognizer(target: self, action: #selector(showChoseStuffView(sender:)))
        brownCaseImageView.addGestureRecognizer(thirdGesture)
        brownCaseImageView.frame = CGRect(x: 15, y: 15, width: 100, height: 100)
        brownCaseImageView.contentMode = .scaleAspectFit
        brownCaseView.addSubview(brownCaseImageView)
    }

    private func createIphoneImage() {
        iPhoneImageView.tag = 4
        iPhoneImageView.isUserInteractionEnabled = true
        let fourthGesture = UITapGestureRecognizer(target: self, action: #selector(showChoseStuffView(sender:)))
        iPhoneImageView.addGestureRecognizer(fourthGesture)
        iPhoneImageView.frame = CGRect(x: 15, y: 15, width: 100, height: 100)
        iPhoneImageView.contentMode = .scaleAspectFit
        iPhoneView.addSubview(iPhoneImageView)
    }

    private func createMacBookLabel() {
        macBookLabel.frame = CGRect(x: 10, y: 110, width: 120, height: 50)
        macBookLabel.text = "Чехол Incase Flat для MacBook Pro 16 дюймов"
        macBookLabel.textColor = .white
        macBookLabel.font = UIFont.systemFont(ofSize: 13, weight: .light)
        macBookLabel.textAlignment = .left
        macBookLabel.numberOfLines = 3
        macBookCaseView.addSubview(macBookLabel)
    }

    private func createStrapLabel() {
        strapLabel.frame = CGRect(x: 10, y: 117, width: 120, height: 50)
        strapLabel.text = "Спортивный ремешок Black Unity (для корпуса)"
        strapLabel.textColor = .white
        strapLabel.font = UIFont.systemFont(ofSize: 13, weight: .light)
        strapLabel.textAlignment = .left
        strapLabel.numberOfLines = 3
        strapView.addSubview(strapLabel)
    }

    private func createBrownCaseLabel() {
        brownCaseLabel.frame = CGRect(x: 15, y: 120, width: 120, height: 50)
        brownCaseLabel.text = "Кожанный чехол для MacBook Pro 13 дюймов"
        brownCaseLabel.textColor = .white
        brownCaseLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
        brownCaseLabel.textAlignment = .left
        brownCaseLabel.numberOfLines = 3
        brownCaseView.addSubview(brownCaseLabel)
    }

    private func createIphoneLable() {
        iPhoneLabel.frame = CGRect(x: 15, y: 120, width: 120, height: 50)
        iPhoneLabel.text = "iPhone 12 Pro"
        iPhoneLabel.textColor = .white
        iPhoneLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
        iPhoneLabel.textAlignment = .left
        iPhoneLabel.numberOfLines = 3
        iPhoneView.addSubview(iPhoneLabel)
    }

    @objc private func showChoseStuffView(sender: UITapGestureRecognizer) {
        let stuffVC = ChosenStuffController()
        guard let tag = sender.view?.tag else { return }
        switch tag {
        case 1:
            stuffVC.descriptionOfChosenStuff = macBookLabel.text
            stuffVC.priceString = "3 990.00 руб."
            stuffVC.aboutString = macBookLabel.text
            stuffVC.goodImage = macBookCaseImageView.image
            stuffVC.secondGoodImage = secondMacBookCaseImageView.image
            stuffVC.thirdGoodImage = thirdMacBookCaseImageView.image
        case 2:
            stuffVC.descriptionOfChosenStuff = strapLabel.text
            stuffVC.priceString = "3 990.00 руб."
            stuffVC.aboutString = strapLabel.text
            stuffVC.goodImage = strapImageView.image
            stuffVC.secondGoodImage = secondStrapImageView.image
            stuffVC.thirdGoodImage = thirdStrapImageView.image
        case 3:
            stuffVC.descriptionOfChosenStuff = brownCaseLabel.text
            stuffVC.priceString = "7 990.00 руб."
            stuffVC.aboutString = brownCaseLabel.text
            stuffVC.goodImage = brownCaseImageView.image
            stuffVC.secondGoodImage = secondBrownCaseImageView.image
            stuffVC.thirdGoodImage = thirdBrownCaseImageView.image
        case 4:
            stuffVC.descriptionOfChosenStuff = iPhoneLabel.text
            stuffVC.priceString = "124.990 руб."
            stuffVC.aboutString = iPhoneLabel.text
            stuffVC.goodImage = iPhoneImageView.image
            stuffVC.secondGoodImage = secondIPhoneImageView.image
            stuffVC.thirdGoodImage = thirdIPhoneImageView.image

        default:
            break
        }
        navigationController?.pushViewController(stuffVC, animated: true)
    }

    private func createStuffScrollView() {
        stuffScrollView.frame = CGRect(x: 0, y: 0, width: 410, height: 480)
        stuffScrollView.contentSize = CGSize(width: stuffScrollView.frame.size.width * 1.5, height:
                                                stuffScrollView.frame.size.height)
        stuffScrollView.addSubview(macBookCaseView)
        stuffScrollView.addSubview(strapView)
        stuffScrollView.addSubview(brownCaseView)
        stuffScrollView.addSubview(iPhoneView)
        view.addSubview(stuffScrollView)
    }

}
