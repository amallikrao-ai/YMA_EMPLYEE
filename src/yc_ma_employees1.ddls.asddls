@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Employee'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions : true
define root view entity YC_MA_EMPLOYEES1 
provider contract transactional_query
as projection on YI_MA_EMPLOYEES1
{
    key Empid,
    Firstname,
    Lastname,
    Dateofbirth,
    Gender,
    Department,
    /* Associations */
    _items: redirected to composition child yc_ma_emp_items1
}
