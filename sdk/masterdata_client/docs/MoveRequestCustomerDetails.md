# MoveRequestCustomerDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**internal_id** | **str** |  | [optional] 
**account_number** | **str** |  | [optional] 
**salutation** | **str** |  | [optional] 
**initials** | **str** |  | [optional] 
**first_name** | **str** |  | [optional] 
**last_name** | **str** |  | [optional] 
**birth_date** | **datetime** |  | [optional] 
**ssin** | **str** |  | [optional] 
**ssin_country** | [**CountryCode**](CountryCode.md) |  | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) |  | [optional] 
**company_name** | **str** |  | [optional] 
**organization_number** | **str** |  | [optional] 
**vat_number** | **str** |  | [optional] 
**default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**invoice_address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**bank_account** | **str** |  | [optional] 
**email_address** | **str** |  | [optional] 
**telephone_number** | **str** |  | [optional] 
**mobile_telephone_number** | **str** |  | [optional] 
**website** | **str** |  | [optional] 
**culture** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.move_request_customer_details import MoveRequestCustomerDetails

# TODO update the JSON string below
json = "{}"
# create an instance of MoveRequestCustomerDetails from a JSON string
move_request_customer_details_instance = MoveRequestCustomerDetails.from_json(json)
# print the JSON string representation of the object
print(MoveRequestCustomerDetails.to_json())

# convert the object into a dict
move_request_customer_details_dict = move_request_customer_details_instance.to_dict()
# create an instance of MoveRequestCustomerDetails from a dict
move_request_customer_details_from_dict = MoveRequestCustomerDetails.from_dict(move_request_customer_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


