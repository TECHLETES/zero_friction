# ChangeCustomerDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **str** |  | 
**salutation** | **str** |  | 
**initials** | **str** |  | 
**first_name** | **str** |  | 
**last_name** | **str** |  | 
**birth_date** | **datetime** |  | [optional] 
**ssin** | **str** |  | 
**ssin_country** | [**CountryCode**](CountryCode.md) |  | 
**company_name** | **str** |  | 
**organization_number** | **str** |  | [optional] 
**vat_number** | **str** |  | [optional] 
**country_code** | [**CountryCode**](CountryCode.md) |  | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) |  | [optional] 
**changed_by_portal** | **bool** |  | [optional] 

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


