@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employees'
@Metadata.ignorePropagatedAnnotations: true
define root view entity YI_MA_EMPLOYEES1 as select from yma_employees
composition [1..*] of YI_MA_EMP_ITEMS1 as _items
{
    key empid as Empid,
    firstname as Firstname,
    lastname as Lastname,
    dateofbirth as Dateofbirth,
    gender as Gender,
    department as Department,
    _items // Make association public
}
