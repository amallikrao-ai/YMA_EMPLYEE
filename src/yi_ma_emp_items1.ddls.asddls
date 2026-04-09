@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employees Item View'
@Metadata.ignorePropagatedAnnotations: true
define view entity YI_MA_EMP_ITEMS1 as select from yma_emp_items
association to parent YI_MA_EMPLOYEES1 as _employees
    on $projection.Empid = _employees.Empid
{
    key empid as Empid,
    key itemid as ItemId,
    itemtype as Itemtype,
    itemdesc as Itemdesc,
    assigndate as Assigndate,
    returndate as Returndate,
    status as Status,
    remarks as Remarks,
    _employees // Make association public
}
