//
//  CustomInterfaceFactory.swift
//  test-custom
//
//  Created by Ngine on 08/07/2020.
//  Copyright © 2020 Ngine. All rights reserved.
//

import TVMLKit

class CustomInterfaceFactory: TVInterfaceFactory {
    static let templateName = "mediaDescription"
    
    override func makeViewController(element: TVViewElement, existingViewController: UIViewController?) -> UIViewController? {
        guard element.name == CustomInterfaceFactory.templateName else { return nil }
        let descriptionViewController = DescriptionViewController.init()
        if let title = element.attributes?["title"]{
            descriptionViewController.title_text = title
            //descriptionViewController.view.frame = CGRect(x: 90, y: 60, width: 1740, height: 60)
        }
        if let subTitle = element.attributes?["subTitle"]{
            descriptionViewController.subtitle_text = subTitle
        }
        if let text = element.attributes?["text"]{
            descriptionViewController.media_text = text
        }
        if let description = element.attributes?["description"]{
            descriptionViewController.description_text = description
        }
        

        return descriptionViewController
    }
    
}
