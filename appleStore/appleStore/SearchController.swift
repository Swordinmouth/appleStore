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

    private var macBookCaseImage = UIImageView(image: UIImage(named: "чехол"))
    private var strapImage = UIImageView(image: UIImage(named: "ремешок"))
    private var brownCaseImage = UIImageView(image: UIImage(named: "коричневый чехол"))

    private var macBookLabel = UILabel()
    private var strapLabel = UILabel()
    private var brownCaseLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }

    //MARK: - Private Methods
    private func setUpViews() {
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
        brownCaseView.frame = CGRect(x: 280, y: 300, width: 200, height: 180)
        brownCaseView.backgroundColor = .darkGray
        brownCaseView.layer.cornerRadius = 20
        view.addSubview(brownCaseView)
    }

    private func createMacBookCaseImage() {
        macBookCaseImage.tag = 1
        macBookCaseImage.isUserInteractionEnabled = true
        let firstGesture = UITapGestureRecognizer(target: self, action: #selector(showChoseStuffView(sender:)))
        macBookCaseImage.addGestureRecognizer(firstGesture)
        macBookCaseImage.frame = CGRect(x: 15, y: 15, width: 100, height: 100)
        macBookCaseImage.contentMode = .scaleAspectFit
        macBookCaseView.addSubview(macBookCaseImage)
    }

    private func createStrapImage() {
        strapImage.tag = 2
        strapImage.isUserInteractionEnabled = true
        let secondGesture = UITapGestureRecognizer(target: self, action: #selector(showChoseStuffView(sender:)))
        strapImage.addGestureRecognizer(secondGesture)
        strapImage.frame = CGRect(x: 15, y: 15, width: 100, height: 100)
        strapImage.contentMode = .scaleAspectFit
        strapView.addSubview(strapImage)
    }

    private func createBrownCaseImage() {
        brownCaseImage.tag = 3
        brownCaseImage.isUserInteractionEnabled = true
        let thirdGesture = UITapGestureRecognizer(target: self, action: #selector(showChoseStuffView(sender:)))
        brownCaseImage.addGestureRecognizer(thirdGesture)
        brownCaseImage.frame = CGRect(x: 15, y: 15, width: 130, height: 110)
        brownCaseImage.contentMode = .scaleAspectFit
        brownCaseView.addSubview(brownCaseImage)
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

    @objc private func showChoseStuffView(sender: UITapGestureRecognizer) {
        let stuffVC = ChosenStuffController()
        guard let tag = sender.view?.tag else { return }
        switch tag {
        case 1:
            stuffVC.descriptionOfChosenStuff = macBookLabel.text ?? "nil"
            stuffVC.imageOfChosenStuff = macBookCaseImage.image ?? UIImage()
        case 2:
            stuffVC.descriptionOfChosenStuff = strapLabel.text ?? "nil"
            stuffVC.imageOfChosenStuff = strapImage.image ?? UIImage()
        case 3:
            stuffVC.descriptionOfChosenStuff = brownCaseLabel.text ?? "nil"
            stuffVC.imageOfChosenStuff = brownCaseImage.image ?? UIImage()
        default:
            break
        }
        navigationController?.pushViewController(stuffVC, animated: true)
    }

}
