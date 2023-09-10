//
//  HeaderView.swift
//  TableViewSection
//
//  Created by 林祔利 on 2023/9/6.
//

import Foundation
import UIKit

class TableHeader: UITableViewHeaderFooterView {
    static let identifier = "TableHeader"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "達羅特")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Select Actor"
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(imageView)
        contentView.backgroundColor = .systemOrange
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.sizeToFit()
        label.frame = CGRect(x: 0
                             , y: contentView.frame.size.height - 10 - label.frame.size.height
                             , width: contentView.frame.size.width
                             , height: label.frame.size.height)
        imageView.frame = CGRect(x: 0
                                 , y: 0
                                 , width: contentView.frame.size.width
                                 , height: contentView.frame.size.height - 15 - label.frame.size.height)
    }
}
