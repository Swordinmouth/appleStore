//
//  CycleViewController.swift
//  appleStore
//
//  Created by Valery on 18.07.2021.
//

import UIKit

final class CycleViewController: UIViewController {

    //MARK: - Private Properties
    private let pregnancyImage: UIImageView = {
        let view = UIImageView()
        view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        view.contentMode = .scaleAspectFit
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let pregnancyLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 120, y: 700, width: 250, height: 30)
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 35, y: 720, width: 330, height: 60)
        label.font = .systemFont(ofSize: 18, weight: .light)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
     }()

    lazy var subView: [UIView] = [pregnancyImage, pregnancyLabel, descriptionLabel]

    //MARK: - Init
    init(pregnancyWith: PregnancyHelper) {
        super.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = .white
        edgesForExtendedLayout = []

        pregnancyImage.image = pregnancyWith.image
        pregnancyLabel.text = pregnancyWith.name
        descriptionLabel.text = pregnancyWith.description

        for view in subView { self.view.addSubview(view) }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
