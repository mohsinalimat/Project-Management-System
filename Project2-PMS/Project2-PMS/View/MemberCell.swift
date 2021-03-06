//
//  MemberCell.swift
//  Project2-PMS
//
//  Created by Mark on 1/26/18.
//  Copyright © 2018 RJTCompuquest. All rights reserved.
//

import UIKit
import SDWebImage

class MemberCell: UITableViewCell {
	@IBOutlet weak var memberImage: UIImageView!
	@IBOutlet weak var memberName: UILabel!
	@IBOutlet weak var memberEmail: UILabel!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		memberImage.layer.cornerRadius = memberImage.frame.size.width / 2
		memberImage.clipsToBounds = true
		memberImage.layer.masksToBounds = true
		
		memberName.font = UIFont.mediumFont
		memberEmail.font = UIFont.smallFont
	}
	
	func configureCell(imageURL: URL?, name: String?, email: String?) {
		if let url = imageURL {
			self.memberImage.sd_setImage(with: url, completed: nil)
		} else {
			self.memberImage.image = #imageLiteral(resourceName: "placeholder")
		}
		self.memberName.text = name
		self.memberEmail.text = email
	}
}
