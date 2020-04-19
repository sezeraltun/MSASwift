//
//  MSAAlertView.swift
//  MSAFrameworkSwift
//
//  Created by MacBook Pro on 19.04.2020.
//  Copyright © 2020 Sezer Altun. All rights reserved.
//

import UIKit
import Foundation

public class MSAAlertView{
    
   
        public func alert(root:UIViewController,title:String,message:String,btn:String){
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: btn, style: .default, handler: nil))
            //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

            root.present(alert, animated: true)
            
        }
       
        
    
    public init(){
        
    }
    
}
