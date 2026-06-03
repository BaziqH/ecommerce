/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

//MARK: - LOAD CELLS
extension Homepage{
    func loadCell(tableview: UITableView, indexPath: IndexPath) -> UITableViewCell{
        
        if indexPath.row == 0 {
            return loadBannerCell(tableView: tableview, indexPath: indexPath)
        }
        else if indexPath.row == 1{
            return loadSegmentedControl(tableView: tableview, indexPath: indexPath)
        }
        return loadProductsCell(tableView: tableview, indexPath: indexPath)
    }
}
