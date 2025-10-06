# ContractorDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 
**account_number** | **str** |  | [optional] 
**short_display_name** | **str** |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) |  | [optional] 
**customer_group** | [**CustomerGroupReferenceDTO**](CustomerGroupReferenceDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.contractor_dto import ContractorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractorDTO from a JSON string
contractor_dto_instance = ContractorDTO.from_json(json)
# print the JSON string representation of the object
print(ContractorDTO.to_json())

# convert the object into a dict
contractor_dto_dict = contractor_dto_instance.to_dict()
# create an instance of ContractorDTO from a dict
contractor_dto_from_dict = ContractorDTO.from_dict(contractor_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


