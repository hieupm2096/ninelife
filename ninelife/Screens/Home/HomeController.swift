//
//  HomeController.swift
//  ninelife
//
//  Created by Hieu Pham on 6/8/20.
//  Copyright © 2020 Hieu Pham. All rights reserved.
//

import UIKit

class HomeController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        setupTabBar()
    }
    
    func setupTabBar() {
        tabBar.tintColor = .white
        tabBar.isTranslucent = false
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(named: .hanPurple)], for: .selected)
        
        let exploreController = ExploreController()
        exploreController.tabBarItem.image = UIImage(named: "ic_menu_explore")?.withRenderingMode(.alwaysOriginal)
        exploreController.tabBarItem.title = "Explore"
        
        
        let eventsController = EventsController()
        eventsController.tabBarItem.image = UIImage(named: "ic_menu_events")?.withRenderingMode(.alwaysOriginal)
        eventsController.tabBarItem.title = "Events"
        
        let locationsController = LocationsController()
        locationsController.tabBarItem.image = UIImage(named: "ic_menu_locations")?.withRenderingMode(.alwaysOriginal)
        locationsController.tabBarItem.title = "Locations"
        
        let inboxController = InboxController()
        inboxController.tabBarItem.image = UIImage(named: "ic_menu_inbox")?.withRenderingMode(.alwaysOriginal)
        inboxController.tabBarItem.title = "Inbox"
        
        let accountController = AccountController()
        accountController.tabBarItem.image = UIImage(named: "ic_menu_account")?.withRenderingMode(.alwaysOriginal)
        accountController.tabBarItem.title = "Account"
        
        viewControllers = [exploreController, eventsController, locationsController, inboxController, accountController]
        
    }
}


import SwiftUI
struct HomePreview: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            return HomeController()
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            
        }
    }
}
