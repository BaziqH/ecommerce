/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

//MARK: - TABLE VIEW
extension ProductPageVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return loadCell(tableview: productTableView, indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return self.view.frame.height/3
        }
        return (view.frame.width/6)
    }
}
//MARK: - SETUP TABLE VIEW
extension ProductPageVC{
    func setupTableView(){
        productTableView.delegate = self
        productTableView.dataSource = self
    }
    //MARK: - REGISTER NIBS
    func registerTVuCell(){
        let imageNib = UINib(nibName: "ProductImageTVuCell", bundle: nil)
        productTableView.register(imageNib, forCellReuseIdentifier: "ProductImageTVuCell")
        
        let labelNib = UINib(nibName: "ProductInfoTVuCell", bundle: nil)
        productTableView.register(labelNib, forCellReuseIdentifier: "ProductInfoTVuCell")
    }
}
