# PrepaymentAskingPeriodDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  | [optional]
**complete** | **bool** |  | [optional]
**input_missing_reason** | [**InputMissingReason**](InputMissingReason.md) |  | [optional]
**validation_errors** | [**List[RequiredQuantityValidationErrorDTO]**](RequiredQuantityValidationErrorDTO.md) |  | [optional]

## Example

```python
from billing_client.models.prepayment_asking_period_dto import PrepaymentAskingPeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentAskingPeriodDTO from a JSON string
prepayment_asking_period_dto_instance = PrepaymentAskingPeriodDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentAskingPeriodDTO.to_json())

# convert the object into a dict
prepayment_asking_period_dto_dict = prepayment_asking_period_dto_instance.to_dict()
# create an instance of PrepaymentAskingPeriodDTO from a dict
prepayment_asking_period_dto_from_dict = PrepaymentAskingPeriodDTO.from_dict(prepayment_asking_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
