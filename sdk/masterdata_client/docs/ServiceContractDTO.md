# ServiceContractDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** |  | [optional] 
**contract_number** | **str** |  | [optional] 
**contractor_id** | **str** |  | [optional] 
**contractor_acount_number** | **str** |  | [optional] 
**contractor_display_name** | **str** |  | [optional] 
**supply_start_date_time** | **datetime** |  | [optional] 
**supply_end_date_time** | **datetime** |  | [optional] 
**current_contract_status** | [**ContractStatus**](ContractStatus.md) |  | [optional] 

## Example

```python
from masterdata_client.models.service_contract_dto import ServiceContractDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceContractDTO from a JSON string
service_contract_dto_instance = ServiceContractDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceContractDTO.to_json())

# convert the object into a dict
service_contract_dto_dict = service_contract_dto_instance.to_dict()
# create an instance of ServiceContractDTO from a dict
service_contract_dto_from_dict = ServiceContractDTO.from_dict(service_contract_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


