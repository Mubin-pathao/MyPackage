//
//  File.swift
//  
//
//  Created by Pathao Ltd on 9/12/24.
//

import UIKit

class TestClass : UIView {
    public override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
//        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        loadNib()
    }
    
    @discardableResult func loadNib() -> UIView? {
        let view = Bundle.main.loadNibNamed("TestClass", owner: self)?.first as? UIView
        view?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view?.frame = bounds
        if let view { addSubview(view) }
        return view
    }
}


