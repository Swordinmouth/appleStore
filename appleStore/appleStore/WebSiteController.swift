//
//  WebSiteController.swift
//  appleStore
//
//  Created by Valery on 14.07.2021.
//

import UIKit
import WebKit

struct AppStoreSources {
    static let firstStuffName = "Чехол Incase Flat для MacBook Pro 16 дюймов"
    static let firstStuffUrl = "https://www.apple.com/ru/shop/product/HLKY2ZM/A/"
    static let secondStuffName = "Спортивный ремешок Black Unity (для корпуса)"
    static let secondStuffUrl = "https://www.apple.com/ru/shop/product/MJ4V3ZM/A/"
    static let thirdStuffName = "Кожанный чехол для MacBook Pro 13 дюймов"
    static let thirdStuffUrl = "https://www.apple.com/ru/shop/product/MWV92ZM/A/"
    static let fourthStuffName = "iPhone 12 Pro"
    static let fourthStuffUrl = "https://www.apple.com/ru/shop/buy-iphone/iphone-12-pro"
}

class WebSiteController: UIViewController {
    //MARK: - Visual Components
    private var webView = WKWebView()
    private var webToolBar = UIToolbar()
    private var backBarButton = UIBarButtonItem()
    private var forwardBarButton = UIBarButtonItem()
    private var refreshBarButton = UIBarButtonItem()
    private var shareBarButton = UIBarButtonItem()
    private var flexibleSpaceBarButton = UIBarButtonItem()

    //MARK: - Properties
    private var stuffUrl = String()
    var labelOfChosenStuff: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        view = webView
        setupView()
    }

    //MARK: - Setup view methods
    private func setupView() {
        view.backgroundColor = .white
        createToolBar()
        createBackBarButton()
        createForwardBarButton()
        createRefreshBarButton()
        createShareBarButton()
        createFlexibleSpaceBarButton()
        setupToolBar()
        urlOfChosenStuff()
    }

    private func createToolBar() {
        webToolBar.frame = CGRect(x: 8, y: 780, width: 400, height: 50)
        view.addSubview(webToolBar)
    }

    private func createBackBarButton() {
        backBarButton = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target:
                                            self, action: #selector(goBack))
    }

    private func createForwardBarButton() {
        forwardBarButton = UIBarButtonItem(image: UIImage(systemName: "chevron.forward"), style: .plain, target:
                                            self, action: #selector(goForward))
    }

    private func createRefreshBarButton() {
        refreshBarButton = UIBarButtonItem(image: UIImage(systemName: "arrow.triangle.2.circlepath"), style: .plain,
                                           target: self, action: #selector(refresh))
    }

    private func createShareBarButton() {
        shareBarButton = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .plain, target:
                                            self, action: #selector(tapToShare))
    }

    private func createFlexibleSpaceBarButton() {
        flexibleSpaceBarButton = UIBarButtonItem(systemItem: .flexibleSpace)
    }

    private func setupToolBar() {
        webToolBar.setItems([backBarButton,
                             forwardBarButton,
                             flexibleSpaceBarButton,
                             shareBarButton,
                             refreshBarButton], animated: true)
    }

    //MARK: - Private Methods
    @objc private func goBack() {
        if webView.canGoBack {
            webView.goBack()
        } else {
            dismiss(animated: true, completion: nil)
        }
    }

    @objc private func goForward() {
        if webView.canGoForward {
            webView.goForward()
        }
    }

    @objc private func refresh() {
        webView.reload()
    }

    @objc private func tapToShare() {
        let urlToShare = stuffUrl
        let activityController = UIActivityViewController(activityItems: [urlToShare], applicationActivities: nil)
         present(activityController, animated: true)
    }

    private func urlOfChosenStuff() {
        switch labelOfChosenStuff {
        case AppStoreSources.firstStuffName:
            urlLoadRequest(urlString: AppStoreSources.firstStuffUrl)
        case AppStoreSources.secondStuffName:
            urlLoadRequest(urlString: AppStoreSources.secondStuffUrl)
        case AppStoreSources.thirdStuffName:
            urlLoadRequest(urlString: AppStoreSources.thirdStuffUrl)
        case AppStoreSources.fourthStuffName:
            urlLoadRequest(urlString: AppStoreSources.fourthStuffUrl)
        default: break
        }
    }

    private func urlLoadRequest(urlString: String) {
         guard let myUrl = URL(string: urlString) else { return }
         let request = URLRequest(url: myUrl)
         webView.load(request)
     }

}
