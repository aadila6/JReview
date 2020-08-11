//
//  ReviewViewController.swift
//  Jreview
//
//  Created by Adila on 8/10/20.
//  Copyright © 2020 Adila Abudureheman. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController, TagListViewDelegate {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var ReviewTargetNameLabel: UILabel!
    @IBOutlet weak var StackView: UIStackView!
    @IBOutlet weak var RateStarView: StarRatingView!
    @IBOutlet weak var TagsView: TagListView!
    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var ReviewTextField: UITextView!
    
    @IBOutlet weak var SubmitBtn: UIButton!
    @IBOutlet weak var ReportBtn: UIButton!
    @IBOutlet weak var CancelBtn: UIButton!
    
    var viewModel: ReviewViewModel!
    var targetUserName : String = "Samantha Doe"
    let sampleTags = ["#greattutee", "#excellent", "#greatsession","#awesome","#fun","#nice","#thankyou"]
    var tags : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        TagsView.delegate = self
        viewModel = ReviewViewModel()
        setUpUI()
        setUpVM()
        print("Initing Review VC")
    }
    
    func setUpUI(){
        let traits = [UIFontDescriptor.TraitKey.weight: UIFont.Weight.bold] // UIFontWeightBold / UIFontWeightRegular
        var imgFontDescriptor = UIFontDescriptor(fontAttributes: [UIFontDescriptor.AttributeName.family: "Arial"])
        imgFontDescriptor = imgFontDescriptor.addingAttributes([UIFontDescriptor.AttributeName.traits: traits])
        TagsView.textFont = UIFont(descriptor: imgFontDescriptor, size: 14.0)
        self.TagsView.addTags(self.sampleTags)
        self.SubmitBtn.layer.cornerRadius = 30
        self.ReportBtn.layer.cornerRadius = 30
        self.CancelBtn.layer.cornerRadius = 30
        self.UserImage.layer.cornerRadius = 30
        self.ReviewTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.ReviewTextField.layer.borderWidth = 1
        self.ReviewTextField.layer.cornerRadius = 30
        ReviewTextField.textContainer.lineFragmentPadding = 20
    }
    
    func setUpVM(){
        print(viewModel.titleLabel)
        print(viewModel.detailText)
        print(viewModel.feedBackText)
        print(viewModel.sampleTags)
        
    }
    
    
    @IBAction func ReportBtn(_ sender: Any) {
        
    }
    
    @IBAction func SubmitBtn(_ sender: Any) {
        let rate = RateStarView.rating
        let tagViews = TagsView.selectedTags()
        let review = ReviewTextField.text
        viewModel.UserReviewTargetName = self.targetUserName
        viewModel.UserRateData = RateStarView.rating
        viewModel.UserReviewData = ReviewTextField.text
        print("Rating: \(rate)")
    }
    
    @IBAction func CancelBtn(_ sender: Any) {
        
    }

        func tagRemoveButtonPressed(_ title: String, tagView: TagView, sender: TagListView) {
            print("UnPressed: \(title)")
            tagView.isSelected = false
            tags.removeAll { $0 == title }
            print("Updated selected Tags \(tags)")
    }
    
        func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
                print("Pressed: \(title)")
                tagView.isSelected = true
                tags.append(title)
                print("Updated selected Tags \(tags)")
    }
}
