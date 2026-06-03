/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

//MARK: - LOAD CELLS
extension ProductPageVC{
    func loadCell(tableview: UITableView, indexPath: IndexPath) -> UITableViewCell{
        if indexPath.row == 0 {
            return loadImageCell(tableView: tableview, indexPath: indexPath)
        }
        return loadLabelCell(tableView: tableview, indexPath: indexPath)
    }
}
