//
//  FooterView.swift
//  TableViewSection
//
//  Created by 林祔利 on 2023/9/6.
//

import Foundation
import UIKit

class TableFooter: UITableViewHeaderFooterView {
    static let identifier = "TableFooter"

    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Actor so handsome "
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let sublabel: UILabel = {
        let label = UILabel()
        label.text = "Thanks you"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .light)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(sublabel)
        contentView.backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.sizeToFit()
        sublabel.sizeToFit()
        
        let width = contentView.frame.size.width
        let height = contentView.frame.size.height
        
        label.frame = CGRect(x: 0
                                , y: 0
                                , width: width
                                , height: height/2)
        sublabel.frame = CGRect(x: 0
                                , y: height/2
                                , width: width
                                , height: height/2)
    }
}
