/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

//MARK: - LOAD SEGMENT CELL
extension Homepage{
    func loadSegmentedControl(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SegmentTVuCell", for: indexPath) as? HomepageTVuSegmentedCell else {
            return HomepageTVuSegmentedCell()
        }
        return cell
    }
}
