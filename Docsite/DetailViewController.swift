//
//  DetailViewController.swift
//  Docsite
//
//  Created by Ankur Kushwaha on 20/01/18.
//  Copyright © 2018 Ankur Kushwaha. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail
            }
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }

    }


}
