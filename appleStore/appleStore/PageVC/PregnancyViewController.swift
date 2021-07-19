//
//  PregnancyViewController.swift
//  appleStore
//
//  Created by Valery on 18.07.2021.
//

import UIKit

final class PregnancyViewController: UIPageViewController {

    //MARK: - Private Properties
    private var pregnancy = [PregnancyHelper]()
    private let firstImage = UIImage(named: "pregnancy")
    private let secondImage = UIImage(named: "pregnancy2")
    private let thirdImage = UIImage(named: "pregnancy3")
    private let skipButton = UIButton()
    private let nextButton = UIButton()
    private let getStartedButton = UIButton()
    private var userDefaults = UserDefaults.standard

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

   lazy var arrayPregnancyVC: [CycleViewController] = {
    var pregnantVC = [CycleViewController]()
        for i in pregnancy {
            pregnantVC.append(CycleViewController(pregnancyWith: i))
        }
    return pregnantVC
    }()

    //MARK: - init UIPageViewController
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: navigationOrientation, options: nil)
        self.view.backgroundColor = .white
        self.dataSource = self
        self.delegate = self
        setViewControllers([arrayPregnancyVC[0]], direction: .forward, animated: true, completion: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - Setup view methods
    private func setupView() {
        createPageView()
        createSkipButton()
        createNextButton()
        createGetStartedButton()
    }
    
    //MARK: - Private Methods
    private func createPageView() {
        let firstPregnancy = PregnancyHelper(image: firstImage ?? UIImage(),
                                             name: "Track Your Cycle",
                                             description: "Manage irregular period and learn to improve your period.")
        let secondPregnancy = PregnancyHelper(image: secondImage ?? UIImage(),
                                              name: "Plan Your Pregnat",
                                              description: """
Favorable days are important. Vestibulum rutrum quam vitae fringilla tincidunt.
""")
        let thirdPregnancy = PregnancyHelper(image: thirdImage ?? UIImage(),
                                             name: "Daily Health Insight",
                                             description: """
Personal health insight. Vestibulum rutrum quam vitae fringilla tincidunt.
""")
        pregnancy.append(firstPregnancy)
        pregnancy.append(secondPregnancy)
        pregnancy.append(thirdPregnancy)
    }

    private func createSkipButton() {
        skipButton.frame = CGRect(x: 30, y: 800, width: 100, height: 50)
        skipButton.setTitle("SKIP", for: .normal)
        skipButton.setTitleColor(.blue, for: .normal)
        skipButton.addTarget(self, action: #selector(skip(sender:)), for: .touchUpInside)
        view.addSubview(skipButton)
    }

    private func createNextButton() {
        nextButton.frame = CGRect(x: 270, y: 800, width: 100, height: 50)
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.setTitleColor(.blue, for: .normal)
        nextButton.isUserInteractionEnabled = true
        nextButton.addTarget(self, action: #selector(next(sender:)), for: .touchUpInside)
        view.addSubview(nextButton)
    }

    private func createGetStartedButton() {
        getStartedButton.frame = CGRect(x: 125, y: 800, width: 150, height: 50)
        getStartedButton.setTitle("GET  STARTED", for: .normal)
        getStartedButton.setTitleColor(.blue, for: .normal)
        getStartedButton.addTarget(self, action: #selector(getStart(sender:)), for: .touchUpInside)
        view.addSubview(getStartedButton)
    }

    @objc private func skip(sender: UIButton){
        guard let currentVC = self.viewControllers?.first as? CycleViewController else {return}
        guard let beforeVC = dataSource?.pageViewController(self, viewControllerBefore: currentVC)  else {return}
        setViewControllers([beforeVC], direction: .reverse, animated: true, completion: nil)
    }

    @objc private func next(sender: UIButton) {
        guard let currentVC = self.viewControllers?.first as? CycleViewController else {return}
        guard let nextVC = dataSource?.pageViewController(self, viewControllerAfter: currentVC) else {return}
        setViewControllers([nextVC], direction: .forward, animated: true, completion: nil)
    }

    @objc private func getStart(sender: UIButton) {
        dismiss(animated: true)
        userDefaults.setValue(true, forKey: "hasShow")
    }
}



//MARK: - extension UIPageViewControllerDataSource
extension PregnancyViewController: UIPageViewControllerDataSource {

    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? CycleViewController else { return nil }
        guard let currentIndex = arrayPregnancyVC.firstIndex(of: viewController) else { return nil }

        let previousIndex = currentIndex - 1

        guard let lastController = arrayPregnancyVC.last else { return nil }

        guard let lastIndex = arrayPregnancyVC.firstIndex(of: lastController) else {return nil}
        skipButton.isHidden = currentIndex == lastIndex
        nextButton.isHidden = currentIndex == lastIndex
        getStartedButton.isHidden = currentIndex != lastIndex

        guard previousIndex >= 0 else { return nil }

        guard arrayPregnancyVC.count > previousIndex else { return nil }

        return arrayPregnancyVC[previousIndex]
    }

    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? CycleViewController else { return nil }
        guard let currentIndex = arrayPregnancyVC.firstIndex(of: viewController) else {return nil}

        let nextIndex = currentIndex + 1

        guard let lastController = arrayPregnancyVC.last else { return nil }
        guard let lastIndex = arrayPregnancyVC.firstIndex(of: lastController) else { return nil }
        skipButton.isHidden = currentIndex == lastIndex
        nextButton.isHidden = currentIndex == lastIndex
        getStartedButton.isHidden = currentIndex != lastIndex

        guard nextIndex < arrayPregnancyVC.count else { return nil }

        guard arrayPregnancyVC.count > nextIndex else { return nil }

        return arrayPregnancyVC[nextIndex]
    }
}

//MARK: - extension UIPageViewControllerDelegate
extension PregnancyViewController: UIPageViewControllerDelegate {

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return arrayPregnancyVC.count
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstVC = pageViewController.viewControllers?.first else {return 0}
        guard let firstVCIndex = arrayPregnancyVC.firstIndex(of: firstVC as! CycleViewController) else {return 0}
        return firstVCIndex
}

}
