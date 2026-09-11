# EstimatedAdvancePeriodDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period_start_date_time** | **datetime** |  | [optional] 
**period_end_date_time** | **datetime** |  | [optional] 
**amount_excl_vat** | **float** |  | [optional] 
**vat** | **float** |  | [optional] 
**amount_incl_vat** | **float** |  | [optional] 
**quantity** | **float** |  | [optional] 
**unit_price** | **float** |  | [optional] 
**vat_rate** | **float** |  | [optional] 
**paid** | **bool** |  | [optional] 
**invoice_id** | **str** |  | [optional] 

## Example

```python
from billing_client.models.estimated_advance_period_dto import EstimatedAdvancePeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedAdvancePeriodDTO from a JSON string
estimated_advance_period_dto_instance = EstimatedAdvancePeriodDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedAdvancePeriodDTO.to_json())

# convert the object into a dict
estimated_advance_period_dto_dict = estimated_advance_period_dto_instance.to_dict()
# create an instance of EstimatedAdvancePeriodDTO from a dict
estimated_advance_period_dto_from_dict = EstimatedAdvancePeriodDTO.from_dict(estimated_advance_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


