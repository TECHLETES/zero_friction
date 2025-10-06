# EstimableContractDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**contract_status** | [**ContractStatus**](ContractStatus.md) |  | [optional] 
**supply_start_date_time** | **datetime** |  | [optional] 
**supply_end_date_time** | **datetime** |  | [optional] 
**supply_start_year** | **int** |  | [optional] 
**supply_end_year** | **int** |  | [optional] 
**contract_services** | [**List[EstimableContractedServiceDTO]**](EstimableContractedServiceDTO.md) |  | [optional] 
**calculation_years_in_progress** | **List[int]** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**time_zone** | **str** |  | [optional] 
**is_estimation_in_progress** | **bool** |  | [optional] 
**is_invoice_estimation_in_progress** | **bool** |  | [optional] 

## Example

```python
from forecasting_client.models.estimable_contract_dto import EstimableContractDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimableContractDTO from a JSON string
estimable_contract_dto_instance = EstimableContractDTO.from_json(json)
# print the JSON string representation of the object
print(EstimableContractDTO.to_json())

# convert the object into a dict
estimable_contract_dto_dict = estimable_contract_dto_instance.to_dict()
# create an instance of EstimableContractDTO from a dict
estimable_contract_dto_from_dict = EstimableContractDTO.from_dict(estimable_contract_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


