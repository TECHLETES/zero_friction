# PspInstrumentSnapshotDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method_id** | **str** |  | [optional]
**category** | [**PaymentMethodCategory**](PaymentMethodCategory.md) |  | [optional]
**last4** | **str** |  | [optional]
**bank_code** | **str** |  | [optional]
**provider_estimated_collection_at** | **datetime** |  | [optional]

## Example

```python
from billing_client.models.psp_instrument_snapshot_dto import PspInstrumentSnapshotDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PspInstrumentSnapshotDTO from a JSON string
psp_instrument_snapshot_dto_instance = PspInstrumentSnapshotDTO.from_json(json)
# print the JSON string representation of the object
print(PspInstrumentSnapshotDTO.to_json())

# convert the object into a dict
psp_instrument_snapshot_dto_dict = psp_instrument_snapshot_dto_instance.to_dict()
# create an instance of PspInstrumentSnapshotDTO from a dict
psp_instrument_snapshot_dto_from_dict = PspInstrumentSnapshotDTO.from_dict(psp_instrument_snapshot_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
