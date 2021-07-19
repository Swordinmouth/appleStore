//
//  ChosenStuffController.swift
//  appleStore
//
//  Created by Valery on 09.07.2021.
//

import UIKit

final class ChosenStuffViewController: UIViewController {

    // MARK: - Public Properties
    var descriptionOfChosenStuff: String?
    var priceString: String?
    var aboutString: String?
    var goodImageName = String()
    var secondGoodImageName = String()
    var thirdGoodImageName = String()

    //MARK: - Visual Components
    private var stuffLable = UILabel()
    private var whiteColorButton = UIButton()
    private var grayColorButton = UIButton()
    private var checkMarkImage = UIImageView(image: UIImage(systemName: "checkmark.circle.fill"))
    private var compatibleLable = UILabel()
    private var macBookProEvgeniyLabel = UILabel()
    private var addToCartButton = UIButton()
    private var boxImage = UIImageView(image: UIImage(systemName: "shippingbox"))
    private var shipmentScheduleLabel = UILabel()
    private var shipmentDateLabel = UILabel()
    private var variantsOfShipmentLabel = UILabel()
    private var chosenStuffScrollView = UIScrollView()
    private var secondStuffImage = UIImageView()
    private var thirdStuffImage = UIImageView()
    private var priceLabel = UILabel()
    private var aboutLabel = UILabel()
    private var goodImage: UIImage?
    private var secondGoodImage: UIImage?
    private var thirdGoodImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    //MARK: - Private Methods
    private func setupViews() {
        view.backgroundColor = .black
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationItem.rightBarButtonItems = [UIBarButtonItem(image: UIImage(systemName: "suit.heart"), style:
                                                                .plain, target: self, action: nil),
                                              UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"),
                                                              style: .plain, target: self, action: nil)]

        createStuffLable()
        createPriceLable()
        createAboutLable()
        createChosenStuffScrollView()
        createWhiteButton()
        createGrayButton()
        createCheckMarkImage()
        createCompatibleLable()
        createMacBookProEvgeniyLabel()
        createAddToCartButton()
        createBoxImage()
        createShipmentScheduleLabel()
        createShipmentDateLabel()
        createVariantsOfShipmentLabel()
        uploadInfo()
    }

    private func uploadInfo() {
        priceLabel.text = priceString
        aboutLabel.text = aboutString
    }


    private func createStuffLable() {
        stuffLable.frame = CGRect(x: 10, y: 100, width: 400, height: 50)
        stuffLable.text = descriptionOfChosenStuff
        stuffLable.textAlignment = .center
        stuffLable.font = UIFont.systemFont(ofSize: 20)
        stuffLable.adjustsFontSizeToFitWidth = true
        stuffLable.numberOfLines = 0
        stuffLable.textColor = .white
        view.addSubview(stuffLable)
    }

    private func createPriceLable() {
        priceLabel.frame = CGRect(x: 105, y: 140, width: 200, height: 50)
        priceLabel.textAlignment = .center
        priceLabel.font = UIFont.systemFont(ofSize: 16)
        priceLabel.adjustsFontSizeToFitWidth = true
        priceLabel.textColor = .gray
        view.addSubview(priceLabel)
    }

    private func createAboutLable() {
        aboutLabel.frame = CGRect(x: 105, y: 440, width: 200, height: 50)
        aboutLabel.textAlignment = .center
        aboutLabel.font = UIFont.systemFont(ofSize: 10)
        aboutLabel.adjustsFontSizeToFitWidth = true
        aboutLabel.textColor = .gray
        view.addSubview(aboutLabel)
    }

    private func createChosenStuffScrollView() {
        chosenStuffScrollView.frame = CGRect(x: 0, y: 250, width: 410, height: 200)
        chosenStuffScrollView.isPagingEnabled = true
        chosenStuffScrollView.contentSize = CGSize(width: chosenStuffScrollView.frame.size.width * 3, height:
                                                    chosenStuffScrollView.frame.size.height)
        view.addSubview(chosenStuffScrollView)

        var imageViewRect = chosenStuffScrollView.bounds

        chosenStuffScrollView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:
                                                                            #selector(productImageTapped)))
        let firstImage = UIImageView(image: UIImage(named: goodImageName))
        firstImage.frame = imageViewRect
        firstImage.contentMode = .scaleAspectFit
        chosenStuffScrollView.addSubview(firstImage)

        imageViewRect.origin.x += chosenStuffScrollView.frame.size.width
        let secondImage = UIImageView(image: UIImage(named: secondGoodImageName))
        secondImage.frame = imageViewRect
        secondImage.contentMode = .scaleAspectFit
        chosenStuffScrollView.addSubview(secondImage)

        imageViewRect.origin.x += chosenStuffScrollView.frame.size.width
        let thirdImage = UIImageView(image: UIImage(named: thirdGoodImageName))
        thirdImage.frame = imageViewRect
        thirdImage.contentMode = .scaleAspectFit
        chosenStuffScrollView.addSubview(thirdImage)
    }

    @objc private func productImageTapped() {
         let vc = WebSiteViewController()
         vc.labelOfChosenStuff = stuffLable.text
         present(vc, animated: true)
     }


    private func createWhiteButton() {
        whiteColorButton.frame = CGRect(x: 150, y: 550, width: 40, height: 40)
        whiteColorButton.backgroundColor = .white
        whiteColorButton.layer.borderWidth = 2
        whiteColorButton.layer.cornerRadius = 20
        whiteColorButton.isUserInteractionEnabled = true
        whiteColorButton.addTarget(self, action: #selector(borderColor(sender:)), for: .touchUpInside)
        view.addSubview(whiteColorButton)
    }

    private func createGrayButton() {
        grayColorButton.frame = CGRect(x: 220, y: 550, width: 40, height: 40)
        grayColorButton.backgroundColor = .gray
        grayColorButton.layer.borderWidth = 2
        grayColorButton.layer.cornerRadius = 20
        grayColorButton.isUserInteractionEnabled = true
        grayColorButton.addTarget(self, action: #selector(borderColor(sender:)), for: .touchUpInside)
        view.addSubview(grayColorButton)
    }

    private func createCheckMarkImage() {
        checkMarkImage.frame = CGRect(x: 90, y: 630, width: 20, height: 20)
        checkMarkImage.tintColor = .green
        view.addSubview(checkMarkImage)
    }

    private func createCompatibleLable () {
        compatibleLable.frame = CGRect(x: 120, y: 625, width: 100, height: 30)
        compatibleLable.backgroundColor = .black
        compatibleLable.text = "Совместимо с"
        compatibleLable.textColor = .gray
        compatibleLable.font = UIFont.systemFont(ofSize: 12)
        view.addSubview(compatibleLable)
    }

    private func createMacBookProEvgeniyLabel() {
        macBookProEvgeniyLabel.frame = CGRect(x: 210, y: 625, width: 200, height: 30)
        macBookProEvgeniyLabel.backgroundColor = .black
        macBookProEvgeniyLabel.text = "MacBook Pro - Евгений"
        macBookProEvgeniyLabel.textColor = .blue
        macBookProEvgeniyLabel.font = UIFont.systemFont(ofSize: 12)
        view.addSubview(macBookProEvgeniyLabel)
    }

    private func createAddToCartButton() {
        addToCartButton.frame = CGRect(x: 10, y: 670, width: 400, height: 40)
        addToCartButton.setTitle("Добавить в корзину", for: .normal)
        addToCartButton.backgroundColor = .blue
        addToCartButton.layer.cornerRadius = 10
        view.addSubview(addToCartButton)
    }

    private func createBoxImage() {
        boxImage.frame = CGRect(x: 0, y: 740, width: 20, height: 20)
        boxImage.tintColor = .gray
        view.addSubview(boxImage)
    }

    private func createShipmentScheduleLabel() {
        shipmentScheduleLabel.frame = CGRect(x: 30, y: 740, width: 300, height: 20)
        shipmentScheduleLabel.backgroundColor = .black
        shipmentScheduleLabel.text = "Заказ сегодня в течение дня, доставка:"
        shipmentScheduleLabel.textColor = .white
        shipmentScheduleLabel.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(shipmentScheduleLabel)
    }

    private func createShipmentDateLabel() {
        shipmentDateLabel.frame = CGRect(x: 30, y: 758, width: 300, height: 20)
        shipmentDateLabel.backgroundColor = .black
        shipmentDateLabel.text = "ЧТ 25 Февраля - Бесплатно"
        shipmentDateLabel.textColor = .gray
        shipmentDateLabel.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(shipmentDateLabel)
    }

    private func createVariantsOfShipmentLabel() {
        variantsOfShipmentLabel.frame = CGRect(x: 30, y: 775, width: 400, height: 20)
        variantsOfShipmentLabel.backgroundColor = .black
        variantsOfShipmentLabel.text = "Варианты доставки для местоположения: 115533"
        variantsOfShipmentLabel.textColor = .blue
        variantsOfShipmentLabel.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(variantsOfShipmentLabel)
    }

    @objc private func borderColor(sender: UIButton) {
        sender.layer.borderColor = UIColor.blue.cgColor
    }

}
