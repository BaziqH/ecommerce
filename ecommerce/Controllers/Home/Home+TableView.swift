/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

//MARK: - TABLE VIEW
extension Homepage: UITableViewDelegate, UITableViewDataSource{  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return loadCell(tableview: mainTableView, indexPath: indexPath)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return self.view.frame.width/2
        }
        if indexPath.row == 1{
            print("segmented height")
            return self.view.frame.width/9
        }
        return (view.frame.width/1.5) * 5
    }
}
//MARK: - SETUP HOMEPAGE
extension Homepage{
    func setupTableView(){
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    //MARK: - REGISTER CELLS
    func registerTVuCell(){
        let nib = UINib(nibName: "HeaderTVuCell", bundle: nil)
        mainTableView.register(nib, forCellReuseIdentifier: "HeaderTVuCell")
        
        let segNib = UINib(nibName: "SegmentTVuCell", bundle: nil)
        mainTableView.register(segNib, forCellReuseIdentifier: "SegmentTVuCell")
        
        let gridNib = UINib(nibName: "ProductsTVuCell", bundle: nil)
        mainTableView.register(gridNib, forCellReuseIdentifier: "ProductsTVuCell")
    }
}
