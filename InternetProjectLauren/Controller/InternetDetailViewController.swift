//
//  InternetDetailViewController.swift
//  InternetProjectLauren
//
//  Created by Davis, Lauren on 12/14/18.
//  Copyright © 2018 Davis, Lauren. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController: UIViewController
{
    @IBOutlet weak var webViewer: WKWebView!
    @IBOutlet weak var screenTitle: UILabel!
    
    
    var detailTitle : String?
    {
        didSet
        {
            updateView()
        }
    }
    
    var detailAddress : String?
    {
        didSet
        {
            updateView()
        }
    }
    
    
    private func updateView() -> Void
    {
        if (detailTitle != nil && screenTitle != nil && webViewer != nil)
        {
            if (detailTitle?.range(of: "Definitions", options: .caseInsensitive) != nil)
            {
                loadPDF()
            }
            else
            {
                if(detailAddress != nil)
                {
                    loadURL(webAddress: detailAddress!)
                }
            }
            screenTitle?.text = detailTitle
        }
    }
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        updateView()
    }
    
    private func loadURL(webAddress: String) -> Void
    {
        
    }

    private func loadPDF() -> Void
    {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
