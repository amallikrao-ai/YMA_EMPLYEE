@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Employee Items'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions : true
define view entity YC_MA_EMP_ITEMS1 
//provider contract transactional_query
as projection on YI_MA_EMP_ITEMS1
{
    key Empid,
    key ItemId,
    Itemtype,
    Itemdesc,
    Assigndate,
    Returndate,
    Status,
    Remarks,
    /* Associations */
    _employees: redirected to parent yc_ma_employees1
}
