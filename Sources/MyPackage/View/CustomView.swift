//
//  CustomView.swift
//  
//
//  Created by Pathao Ltd on 9/12/24.
//

import UIKit

public class CustomView: UIView {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var title: UILabel!
   
    public override class func awakeFromNib() {
        super.awakeFromNib()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    @discardableResult func loadNib() -> UIView? {
        let view = Bundle.main.loadNibNamed("CustomView", owner: self)?.first as? UIView
        view?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view?.frame = bounds
        if let view { addSubview(view) }
        return view
    }
}
