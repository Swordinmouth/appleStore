//
//  ChosenStuffController.swift
//  appleStore
//
//  Created by Valery on 09.07.2021.
//

import UIKit

final class ChosenStuffController: UIViewController {

    // MARK: - Public Properties
    var descriptionOfChosenStuff = String()
    var imageOfChosenStuff = UIImage()

    //MARK: - Visual Components
    private var stuffLable = UILabel()
    private var stuffImage = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }

    //MARK: - Private Methods
    private func setUpViews() {
        view.backgroundColor = .black
        createStuffLable()
        createStuffImage()
    }

    private func createStuffLable() {
        stuffLable.frame = CGRect(x: 10, y: 450, width: 400, height: 50)
        stuffLable.text = descriptionOfChosenStuff
        stuffLable.textAlignment = .center
        stuffLable.font = UIFont.systemFont(ofSize: 20)
        stuffLable.adjustsFontSizeToFitWidth = true
        stuffLable.numberOfLines = 0
        stuffLable.textColor = .white
        view.addSubview(stuffLable)
    }

    private func createStuffImage() {
        stuffImage.frame = CGRect(x: 110, y: 200, width: 200, height: 200)
        stuffImage.image = imageOfChosenStuff
        stuffImage.contentMode = .scaleAspectFit
        view.addSubview(stuffImage)
    }

}
