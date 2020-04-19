//
//  PhoneEditText.swift
//  MSAFrameworkSwift
//
//  Created by MacBook Pro on 19.04.2020.
//  Copyright © 2020 Sezer Altun. All rights reserved.
//

import Foundation

public class PhoneEditText: PhoneFormattedTextField {
    
    
    required public init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        self.config.defaultConfiguration = PhoneFormat(defaultPhoneFormat: "(###) ###-##-##")
               
        
       
        
        
    }
    public func converter()-> String{
        
        var str=""
        
        if var a = self.text{
            
            a = a.replacingOccurrences(of: " ", with: "")
            a = a.replacingOccurrences(of: "(", with: "")
            a = a.replacingOccurrences(of: ")", with: "")
            a = a.replacingOccurrences(of: "-", with: "")
            str=a
        }
        
        return str
        
    }
    
    
    
    
}
