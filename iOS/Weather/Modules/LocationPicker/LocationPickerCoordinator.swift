//
//  LocationPickerCoordinator.swift
//  Weather
//
//  Created by Bilal Bakhrom on 2024-02-04.
//

import Foundation
import AppBaseController
import AppSettings
import AppNetwork

public struct LocationPickerDependency {
    public let applicationSettings: ApplicationSettings
    public let networkMonitor: NetworkReachabilityMonitor
    public let geocodingRepo: GeocodingRepoProtocol
    
    init(
        applicationSettings: ApplicationSettings,
        networkMonitor: NetworkReachabilityMonitor,
        geocodingRepo: GeocodingRepoProtocol = GeocodingRepo()
    ) {
        self.applicationSettings = applicationSettings
        self.networkMonitor = networkMonitor
        self.geocodingRepo = geocodingRepo
    }
}

public final class LocationPickerCoordinator: BaseCoordinator {
    public let dependency: LocationPickerDependency
    
    public init(_ dependency: LocationPickerDependency, navigationController: BaseNavigationController) {
        self.dependency = dependency
        super.init(navigationController: navigationController)
    }
    
    public override func start(animated: Bool = true) {
        let viewModel = LocationPickerViewModel(coordinator: self)
        let viewController = LocationPickerViewController(viewModel: viewModel)
        viewController.isModalInPresentation = false
        
        navigationController.present(viewController, animated: true)
    }
}