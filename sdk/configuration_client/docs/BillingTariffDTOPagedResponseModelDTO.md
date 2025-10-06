# BillingTariffDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[BillingTariffDTO]**](BillingTariffDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.billing_tariff_dto_paged_response_model_dto import BillingTariffDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingTariffDTOPagedResponseModelDTO from a JSON string
billing_tariff_dto_paged_response_model_dto_instance = BillingTariffDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(BillingTariffDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
billing_tariff_dto_paged_response_model_dto_dict = billing_tariff_dto_paged_response_model_dto_instance.to_dict()
# create an instance of BillingTariffDTOPagedResponseModelDTO from a dict
billing_tariff_dto_paged_response_model_dto_from_dict = BillingTariffDTOPagedResponseModelDTO.from_dict(billing_tariff_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


