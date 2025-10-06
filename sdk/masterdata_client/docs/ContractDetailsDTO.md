# ContractDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **str** |  | [optional] 
**use_property_group_product** | **bool** |  | [optional] 
**estimations** | [**List[ContractEstimationDTO]**](ContractEstimationDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**internal_contract_id** | **str** |  | [optional] 
**external_contract_id** | **str** |  | [optional] 
**contract_number** | **str** |  | [optional] 
**created_or_linked** | **bool** |  | [optional] 
**service_locations_count** | **int** |  | [optional] 
**billing_properties** | [**ContractDetailsBillingPropertiesBaseDTO**](ContractDetailsBillingPropertiesBaseDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.contract_details_dto import ContractDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractDetailsDTO from a JSON string
contract_details_dto_instance = ContractDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(ContractDetailsDTO.to_json())

# convert the object into a dict
contract_details_dto_dict = contract_details_dto_instance.to_dict()
# create an instance of ContractDetailsDTO from a dict
contract_details_dto_from_dict = ContractDetailsDTO.from_dict(contract_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


