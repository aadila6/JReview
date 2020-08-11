//
//  ReviewViewController.swift
//  Jreview
//
//  Created by Adila on 8/10/20.
//  Copyright © 2020 Adila Abudureheman. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController,TagListViewDelegate {
    
    func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
        print("Pressed: \(title)")
        
    }
    
    
    @IBOutlet weak var StackView: UIStackView!
    @IBOutlet weak var RateStarView: StarRatingView!
    @IBOutlet weak var TagsView: TagListView!
    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var ReviewTextField: UITextView!
    
    @IBOutlet weak var SubmitBtn: UIButton!
    @IBOutlet weak var ReportBtn: UIButton!
    @IBOutlet weak var CancelBtn: UIButton!
    //    var Tags : TagListView = TagListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TagsView.delegate = self
//        TagsView.selectedTags()
        setUpUI()
        print("Initing Review VC")
    }
    func setUpUI(){
        let traits = [UIFontDescriptor.TraitKey.weight: UIFont.Weight.bold] // UIFontWeightBold / UIFontWeightRegular
        var imgFontDescriptor = UIFontDescriptor(fontAttributes: [UIFontDescriptor.AttributeName.family: "Arial"])
        imgFontDescriptor = imgFontDescriptor.addingAttributes([UIFontDescriptor.AttributeName.traits: traits])
        TagsView.textFont = UIFont(descriptor: imgFontDescriptor, size: 14.0)
        self.TagsView.addTags(["#greattutee", "#excellent", "#greatsession","#awesome","#fun","#nice","#thankyou"])
        self.SubmitBtn.layer.cornerRadius = 30
        self.ReportBtn.layer.cornerRadius = 30
        self.CancelBtn.layer.cornerRadius = 30
        self.ReviewTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.ReviewTextField.layer.borderWidth = 1
        self.ReviewTextField.layer.cornerRadius = 30
        ReviewTextField.textContainer.lineFragmentPadding = 20
    }
    
    @IBAction func ReportBtn(_ sender: Any) {
        
        
    }
    @IBAction func SubmitBtn(_ sender: Any) {
        
        
    }
    @IBAction func CancelBtn(_ sender: Any) {
        
    }
}
