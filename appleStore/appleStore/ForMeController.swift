//
//  ForMeController.swift
//  appleStore
//
//  Created by Valery on 09.07.2021.
//

import UIKit

final class ForMeController: UIViewController {

    //MARK: - Visual Componetnts
    private var screenScrollView = UIScrollView()
    private var somethingNewLabel = UILabel()
    private var newForYouView = UIView()
    private var orderLabel = UILabel()
    private var shipmentLabel = UILabel()
    private var nextButton = UIButton()
    private var layerView = UIView()
    private var progressView = UIProgressView()
    private var leftProgressLabel = UILabel()
    private var middleProgressLabel = UILabel()
    private var rightProgressLabel = UILabel()
    private var headphonesImageView = UIImageView()
    private var recomendationsLabel = UILabel()
    private var aboutShipmentLabel = UILabel()
    private var notoficationsLable = UILabel()
    private var redSquareImageView = UIImageView()
    private var secondNextButton = UIButton()
    private var separateView = UIView()
    private var yourDevicesLabel = UILabel()
    private var showAllLabel = UILabel()
    private var avatarBarButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK: - Setup view methods
    private func setupView() {
        createScreenScrollView()
        createNewForYouView()
        createOrderLabel()
        createShipmentLabel()
        createNextButton()
        createLayerView()
        createProgressView()
        createLeftProgressLabel()
        createMiddleProgressLabel()
        createRightProgressLabel()
        createHeadphonesImageView()
        createSomethingNewLabel()
        createRecomendationsLabel()
        createAboutShipmentLabel()
        createNotificationsLabel()
        createRedSquareImageView()
        createSecondNextButton()
        createSeparateView()
        createYourDevicesLabel()
        createShowAllLabel()
        createAvatarBarButton()
        setupNavigationBar()
    }

    private func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        title = "Для вас"
        tabBarController?.tabBar.barTintColor = .white
    }

    private func createScreenScrollView() {
        screenScrollView.contentSize = CGSize(width: UIScreen.main.bounds.width,
                                              height: UIScreen.main.bounds.height + 30)
        view = screenScrollView
    }

    private func createAvatarBarButton() {
        avatarBarButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        avatarBarButton.setImage(UIImage(named: "memoGirl")?.resizeImage(to: avatarBarButton.frame.size), for: .normal)
        avatarBarButton.backgroundColor = .systemBlue
        avatarBarButton.layer.cornerRadius = 15
        avatarBarButton.clipsToBounds = true
        avatarBarButton.imageView?.contentMode = .scaleAspectFit
        avatarBarButton.addTarget(self, action: #selector(accesToPhotoLibrary), for: .touchUpInside)

        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: avatarBarButton)

        guard let data = UserDefaults.standard.value(forKey: "Avatar") as? Data else { return }
        let image = UIImage(data: data)?.resizeImage(to: avatarBarButton.frame.size)
        avatarBarButton.setImage(image, for: .normal)
    }

    private func createSomethingNewLabel() {
        somethingNewLabel.frame = CGRect(x: 10, y: 20, width: 300, height: 25)
        somethingNewLabel.text = "Вот что нового"
        somethingNewLabel.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        somethingNewLabel.textAlignment = .left
        view.addSubview(somethingNewLabel)
    }

    private func createNewForYouView() {
        newForYouView.frame = CGRect(x: 10, y: 70, width: 390, height: 150)
        newForYouView.layer.cornerRadius = 15
        newForYouView.layer.shadowColor = UIColor.black.cgColor
        newForYouView.layer.shadowOpacity = 0.5
        newForYouView.layer.shadowOffset = .zero
        newForYouView.layer.shadowRadius = 10
        newForYouView.backgroundColor = .white
        view.addSubview(newForYouView)
    }

    private func createOrderLabel() {
        orderLabel.frame = CGRect(x: 115, y: 15, width: 300, height: 20)
        orderLabel.text = "Ваш заказ отправлен."
        orderLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        orderLabel.textAlignment = .left
        newForYouView.addSubview(orderLabel)
    }

    private func createShipmentLabel() {
        shipmentLabel.frame = CGRect(x: 115, y: 45, width: 300, height: 20)
        shipmentLabel.text = "1 товар, доставка завтра"
        shipmentLabel.textColor = .gray
        shipmentLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        shipmentLabel.textAlignment = .left
        newForYouView.addSubview(shipmentLabel)
    }

    private func createNextButton() {
        nextButton.frame = CGRect(x: 355, y: 42, width: 30, height: 30)
        nextButton.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        nextButton.tintColor = .gray
        newForYouView.addSubview(nextButton)
    }

    private func createLayerView() {
        layerView.frame = CGRect(x: 0, y: 95, width: 387, height: 0.3)
        layerView.backgroundColor = .gray
        layerView.alpha = 0.2
        newForYouView.addSubview(layerView)
    }

    private func createProgressView() {
        progressView.progressViewStyle = .default
        progressView.frame = CGRect(x: 15, y: 110, width: 360, height: 10)
        progressView.setProgress(0.5, animated: false)
        progressView.tintColor = .systemGreen
        newForYouView.addSubview(progressView)
    }

    private func createLeftProgressLabel() {
        leftProgressLabel.frame = CGRect(x: 15, y: 125, width: 120, height: 20)
        leftProgressLabel.text = "Обрабатывается"
        leftProgressLabel.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        leftProgressLabel.textAlignment = .left
        newForYouView.addSubview(leftProgressLabel)
    }

    private func createMiddleProgressLabel() {
        middleProgressLabel.frame = CGRect(x: 162, y: 125, width: 100, height: 20)
        middleProgressLabel.text = "Отправлено"
        middleProgressLabel.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        middleProgressLabel.textAlignment = .left
        newForYouView.addSubview(middleProgressLabel)
    }

    private func createRightProgressLabel() {
        rightProgressLabel.frame = CGRect(x: 300, y: 125, width: 100, height: 20)
        rightProgressLabel.text = "Доставлено"
        rightProgressLabel.textColor = .gray
        rightProgressLabel.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        rightProgressLabel.textAlignment = .left
        newForYouView.addSubview(rightProgressLabel)
    }

    private func createHeadphonesImageView() {
        headphonesImageView.frame = CGRect(x: 15, y: 2, width: 80, height: 90)
        headphonesImageView.image = UIImage(named: "headphones")
        headphonesImageView.contentMode = .scaleAspectFit
        newForYouView.addSubview(headphonesImageView)
    }

    private func createRecomendationsLabel() {
        recomendationsLabel.frame = CGRect(x: 10, y: 240, width: 300, height: 50)
        recomendationsLabel.text = "Рекомендуется вам"
        recomendationsLabel.textColor = .black
        recomendationsLabel.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        recomendationsLabel.textAlignment = .left
        view.addSubview(recomendationsLabel)
    }

    private func createAboutShipmentLabel() {
        aboutShipmentLabel.frame = CGRect(x: 100, y: 300, width: 240, height: 100)
        aboutShipmentLabel.text = "Получайте новости о своем заказе в режиме реального времени."
        aboutShipmentLabel.textColor = .black
        aboutShipmentLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        aboutShipmentLabel.numberOfLines = 3
        aboutShipmentLabel.textAlignment = .left
        view.addSubview(aboutShipmentLabel)
    }

    private func createNotificationsLabel() {
        notoficationsLable.frame = CGRect(x: 100, y: 350, width: 300, height: 100)
        notoficationsLable.text = "Включите уведомления, чтобы получать новости о своем заказе."
        notoficationsLable.textColor = .gray
        notoficationsLable.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        notoficationsLable.numberOfLines = 2
        notoficationsLable.textAlignment = .left
        view.addSubview(notoficationsLable)
    }

    private func createRedSquareImageView() {
        redSquareImageView.frame = CGRect(x: 20, y: 310, width: 50, height: 50)
        redSquareImageView.image = UIImage(named: "redSquare")
        redSquareImageView.contentMode = .scaleAspectFit
        view.addSubview(redSquareImageView)
    }

    private func createSecondNextButton() {
        secondNextButton.frame = CGRect(x: 370, y: 350, width: 30, height: 30)
        secondNextButton.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        secondNextButton.tintColor = .gray
        view.addSubview(secondNextButton)
    }

    private func createSeparateView() {
        separateView.frame = CGRect(x: 10, y: 440, width: 410, height: 0.3)
        separateView.backgroundColor = .gray
        separateView.alpha = 0.2
        view.addSubview(separateView)
    }

    private func createYourDevicesLabel() {
        yourDevicesLabel.frame = CGRect(x: 10, y: 500, width: 350, height: 30)
        yourDevicesLabel.text = "ваши устройства"
        yourDevicesLabel.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        yourDevicesLabel.textAlignment = .left
        view.addSubview(yourDevicesLabel)
    }

    private func createShowAllLabel() {
        showAllLabel.frame = CGRect(x: 280, y: 505, width: 200, height: 30)
        showAllLabel.text = "Показать все"
        showAllLabel.textColor = .systemBlue
        showAllLabel.font = UIFont.systemFont(ofSize: 17, weight: .light)
        showAllLabel.textAlignment = .left
        view.addSubview(showAllLabel)
    }

    //MARK: - Private Methods
    @objc private func accesToPhotoLibrary() {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
}

//MARK: - Extension UIImagePickerControllerDelegate
extension ForMeController: UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:
                                [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")]
                as? UIImage else { return }
        let imageResized = image.resizeImage(to: avatarBarButton.frame.size)
        avatarBarButton.setImage(imageResized, for: .normal)

        let imageData = image.pngData()
        UserDefaults.standard.setValue(imageData, forKey: "Avatar")

        dismiss(animated: true, completion: nil)
    }
}

//MARK: - Extension UINavigationControllerDelegate
extension ForMeController: UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
