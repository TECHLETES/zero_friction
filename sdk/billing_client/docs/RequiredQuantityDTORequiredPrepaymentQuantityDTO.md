# RequiredQuantityDTORequiredPrepaymentQuantityDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**prepayment_account_id** | **str** |  | [optional]
**prepayment_device_id** | **str** |  | [optional]
**account_number** | **str** |  | [optional]
**device_serial_number** | **str** |  | [optional]
**asking_periods** | [**List[PrepaymentAskingPeriodDTO]**](PrepaymentAskingPeriodDTO.md) |  | [optional]
**receiving_periods** | [**List[PrepaymentReceivingPeriodDTO]**](PrepaymentReceivingPeriodDTO.md) |  | [optional]
**billing_item_id** | **str** |  | [optional]
**service_location_id** | **str** |  | [optional]
**complete** | **bool** |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**validation_errors** | [**List[RequiredQuantityValidationErrorDTO]**](RequiredQuantityValidationErrorDTO.md) |  | [optional]

## Example

```python
from billing_client.models.required_quantity_dto_required_prepayment_quantity_dto import RequiredQuantityDTORequiredPrepaymentQuantityDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredQuantityDTORequiredPrepaymentQuantityDTO from a JSON string
required_quantity_dto_required_prepayment_quantity_dto_instance = RequiredQuantityDTORequiredPrepaymentQuantityDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredQuantityDTORequiredPrepaymentQuantityDTO.to_json())

# convert the object into a dict
required_quantity_dto_required_prepayment_quantity_dto_dict = required_quantity_dto_required_prepayment_quantity_dto_instance.to_dict()
# create an instance of RequiredQuantityDTORequiredPrepaymentQuantityDTO from a dict
required_quantity_dto_required_prepayment_quantity_dto_from_dict = RequiredQuantityDTORequiredPrepaymentQuantityDTO.from_dict(required_quantity_dto_required_prepayment_quantity_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
