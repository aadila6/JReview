//
//  ReviewViewModel.swift
//  Jreview
//
//  Created by Adila on 8/10/20.
//  Copyright © 2020 Adila Abudureheman. All rights reserved.
//

import Foundation
fileprivate struct Defaults {
    
    static let titleLabel = "Rate Adila"
    static let titleDetailLabel = "We want your feedback!"
//    static let titleFooterLabel = "We want your feedback!"
    static let feedBackText = "Enter your opinion here"
    static let errorMessageLabel = "Phone number provided is invalid"

    #if DEBUG
        #if targetEnvironment(simulator)
            static let defaultNumberValue = "557072306"
        #else
            static let defaultNumberValue = "557072305"
        #endif
    #else
        static let defaultNumberValue = String()
    #endif
}

class RegisterViewModel {
    
    // MARK: - Properties
    var titleText: String { return Defaults.titleLabel }
    var detailText: String { return Defaults.titleDetailLabel }
//    var footerText: String { return Defaults.titleFooterLabel }
    var placeholderText: String { return Defaults.feedBackText }
    var errorMessage: String { return Defaults.errorMessageLabel }
        

}
