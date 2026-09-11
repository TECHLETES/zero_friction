# RequiredQuantityDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  |
**custom_entity_property_type_id** | **str** |  | [optional]
**receiving_periods** | [**List[PrepaymentReceivingPeriodDTO]**](PrepaymentReceivingPeriodDTO.md) |  | [optional]
**asking_periods** | [**List[PrepaymentAskingPeriodDTO]**](PrepaymentAskingPeriodDTO.md) |  | [optional]
**tariff_reference_asking_periods** | [**List[SubscriptionAskingPeriodDTO]**](SubscriptionAskingPeriodDTO.md) |  | [optional]
**tariff_reference_receiving_periods** | [**List[SubscriptionReceivingPeriodDTO]**](SubscriptionReceivingPeriodDTO.md) |  | [optional]
**billing_item_id** | **str** |  | [optional]
**service_location_id** | **str** |  | [optional]
**complete** | **bool** |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**validation_errors** | [**List[RequiredQuantityValidationErrorDTO]**](RequiredQuantityValidationErrorDTO.md) |  | [optional]
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional]
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional]
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional]
**direction** | [**Direction**](Direction.md) |  | [optional]
**prepayment_account_id** | **str** |  | [optional]
**prepayment_device_id** | **str** |  | [optional]
**account_number** | **str** |  | [optional]
**device_serial_number** | **str** |  | [optional]

## Example

```python
from billing_client.models.required_quantity_dto import RequiredQuantityDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredQuantityDTO from a JSON string
required_quantity_dto_instance = RequiredQuantityDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredQuantityDTO.to_json())

# convert the object into a dict
required_quantity_dto_dict = required_quantity_dto_instance.to_dict()
# create an instance of RequiredQuantityDTO from a dict
required_quantity_dto_from_dict = RequiredQuantityDTO.from_dict(required_quantity_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
