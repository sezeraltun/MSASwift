//
//  ViewLoadingIndicator.swift
//  MSAFrameworkSwift
//
//  Created by MacBook Pro on 19.04.2020.
//  Copyright © 2020 Sezer Altun. All rights reserved.
//

import Foundation
import UIKit

public class ViewLoadingIndicator{
    var container: UIView = UIView()
    var show = Bool(false)
    var loadingView: UIView = UIView()
    var actInd: UIActivityIndicatorView = UIActivityIndicatorView()
    public func showActivityIndicatory(uiView: UIView) {
        show=true
        container.removeFromSuperview()
        container.frame = uiView.frame
        container.center = uiView.center
        container.backgroundColor = UIColorFromHex(rgbValue: 0xffffff, alpha: 0.0)

        
        loadingView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        loadingView.center = uiView.center
        loadingView.backgroundColor = UIColorFromHex(rgbValue: 0x444444, alpha: 1.0)
        loadingView.clipsToBounds = true
        loadingView.layer.cornerRadius = 10

       
        actInd.frame = CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0);
        actInd.style =
            UIActivityIndicatorView.Style.whiteLarge
        actInd.center = CGPoint(x: loadingView.frame.size.width / 2,
                                y: loadingView.frame.size.height / 2);
        loadingView.addSubview(actInd)
        container.addSubview(loadingView)
        uiView.addSubview(container)
        actInd.startAnimating()
    }
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    public func hideActivityIndicator(uiView: UIView) {
            show=false
           actInd.stopAnimating()
           container.removeFromSuperview()
       }
    public init(){
        
    }
    
}

