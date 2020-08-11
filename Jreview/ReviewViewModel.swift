//
//  ReviewViewModel.swift
//  Jreview
//
//  Created by Adila on 8/10/20.
//  Copyright © 2020 Adila Abudureheman. All rights reserved.
//

import Foundation


class ReviewViewModel {
    // MARK: - Properties
    
    var titleLabel: String = "Rate "
    var detailText: String = "We want your feedback!"
    var feedBackText : String = "Enter your opinion here"
    var sampleTags: [String] = ["#greattutee", "#excellent", "#greatsession","#awesome","#fun","#nice","#thankyou"]
    var UserRateData : Float = 0
    var UserReviewTargetName : String = ""
    var UserTaggedData : [String] = []
    var UserReviewData : String = ""
    
}
