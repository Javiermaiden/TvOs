//
//  UIDescriptionView.swift
//  test-custom
//
//  Created by Ngine on 08/07/2020.
//  Copyright © 2020 Ngine. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    var title_text: String = ""
    var subtitle_text: String = ""
    var media_text: String = ""
    var description_text: String = ""
    var mediaTitle: UILabel = UILabel()
    var mediaSubTitle: UILabel = UILabel()
    var mediaText: UILabel = UILabel()
    var mediaDescription: UILabel = UILabel()
    
    var mediaButton: UIButton = UIButton()
    var playButton: UIButton = UIButton()
    
    /*required init?(coder: NSCoder) {
        self.title_text = "label"
        self.mediaTitle = UILabel()
        super.init(coder: T##NSCoder)
    }*/
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setUpDescription()
        //setUpButton()
        //setUpPlayButton()
    }
    
    private func setUpDescription(){
        mediaTitle = UILabel()
        mediaTitle.font = UIFont.systemFont(ofSize: 57)
        mediaTitle.text = self.title_text
        mediaTitle.textAlignment = .left
        mediaTitle.frame = CGRect(x: 90, y: 230, width: 800, height: 57)
        //mediaTitle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mediaTitle)
        //mediaTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        //mediaTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        mediaSubTitle = UILabel()
        mediaSubTitle.font = UIFont.systemFont(ofSize: 38)
        mediaSubTitle.text = self.subtitle_text
        mediaSubTitle.textAlignment = .left
        mediaSubTitle.frame = CGRect(x: 90, y: 319, width: 800, height: 38)
        view.addSubview(mediaSubTitle)
        
        mediaText = UILabel()
        mediaText.font = UIFont.systemFont(ofSize: 29)
        mediaText.text = self.media_text
        mediaText.textAlignment = .left
        mediaText.frame = CGRect(x: 90, y: 365, width: 800, height: 29)
        view.addSubview(mediaText)
        
        mediaDescription = UILabel()
        mediaDescription.font = UIFont.systemFont(ofSize: 29)
        mediaDescription.text = self.description_text
        mediaDescription.textAlignment = .left
        mediaDescription.frame = CGRect(x: 90, y: 436, width: 823, height: 111)
        mediaDescription.numberOfLines = 3
        view.addSubview(mediaDescription)
    }
    private func setUpButton(){
        mediaButton = UIButton()
        mediaButton.frame = CGRect(x: 200, y: 436, width: 440, height: 90)
        mediaButton.backgroundColor = .darkGray
        //mediaButton:didUpdateFocus(in: self, with: .)
        mediaButton.setImage(.add, for: .normal)
        
        mediaButton.setTitle("asdf", for: .normal)
        mediaButton.setTitleColor(.white, for: .normal)
        mediaButton.setTitleColor(.blue, for: .focused)
        mediaButton.layer.cornerRadius = 45
        mediaButton.layer.borderWidth = 1
        mediaButton.layer.borderColor = UIColor.white.cgColor
        
        mediaButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 40);
        //mediaButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0);
        
        view.addSubview(mediaButton)
    }
    private func setUpPlayButton(){
        playButton = UIButton()
        playButton.frame = CGRect(x: 700, y: 200, width: 440, height: 90)
        playButton.backgroundColor = .darkGray
        playButton.setImage(.add, for: .normal)
        
        playButton.setTitle("ghjk", for: .normal)
        playButton.setTitleColor(.white, for: .normal)
        playButton.layer.cornerRadius = 45
        playButton.layer.borderWidth = 1
        playButton.layer.borderColor = UIColor.white.cgColor
        
        playButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 40);
        //mediaButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0);
        
        view.addSubview(playButton)
    }
    
}
