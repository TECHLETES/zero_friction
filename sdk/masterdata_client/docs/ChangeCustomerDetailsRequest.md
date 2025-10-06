# ChangeCustomerDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **str** |  | [optional] 
**salutation** | **str** |  | [optional] 
**initials** | **str** |  | [optional] 
**first_name** | **str** |  | [optional] 
**last_name** | **str** |  | [optional] 
**birth_date** | **datetime** |  | [optional] 
**ssin** | **str** | Social security identification number | [optional] 
**ssin_country** | [**CountryCode**](CountryCode.md) | Social security identification number country, used for validation | [optional] 
**company_name** | **str** |  | [optional] 
**organization_number** | **str** |  | [optional] 
**vat_number** | **str** |  | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) |  | [optional] 

## Example

```python
from masterdata_client.models.change_customer_details_request import ChangeCustomerDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeCustomerDetailsRequest from a JSON string
change_customer_details_request_instance = ChangeCustomerDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeCustomerDetailsRequest.to_json())

# convert the object into a dict
change_customer_details_request_dict = change_customer_details_request_instance.to_dict()
# create an instance of ChangeCustomerDetailsRequest from a dict
change_customer_details_request_from_dict = ChangeCustomerDetailsRequest.from_dict(change_customer_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


