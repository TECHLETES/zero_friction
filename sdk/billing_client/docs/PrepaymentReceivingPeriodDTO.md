# PrepaymentReceivingPeriodDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**coverage_complete** | **bool** |  | [optional]
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  | [optional]
**receiving_period_type** | **int** |  | [optional]

## Example

```python
from billing_client.models.prepayment_receiving_period_dto import PrepaymentReceivingPeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentReceivingPeriodDTO from a JSON string
prepayment_receiving_period_dto_instance = PrepaymentReceivingPeriodDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentReceivingPeriodDTO.to_json())

# convert the object into a dict
prepayment_receiving_period_dto_dict = prepayment_receiving_period_dto_instance.to_dict()
# create an instance of PrepaymentReceivingPeriodDTO from a dict
prepayment_receiving_period_dto_from_dict = PrepaymentReceivingPeriodDTO.from_dict(prepayment_receiving_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
