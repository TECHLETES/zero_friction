# PspInstrumentSnapshotRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method_id** | **str** |  | [optional]
**category** | [**PaymentMethodCategory**](PaymentMethodCategory.md) |  | [optional]
**last4** | **str** |  | [optional]
**bank_code** | **str** |  | [optional]

## Example

```python
from billing_client.models.psp_instrument_snapshot_request import PspInstrumentSnapshotRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PspInstrumentSnapshotRequest from a JSON string
psp_instrument_snapshot_request_instance = PspInstrumentSnapshotRequest.from_json(json)
# print the JSON string representation of the object
print(PspInstrumentSnapshotRequest.to_json())

# convert the object into a dict
psp_instrument_snapshot_request_dict = psp_instrument_snapshot_request_instance.to_dict()
# create an instance of PspInstrumentSnapshotRequest from a dict
psp_instrument_snapshot_request_from_dict = PspInstrumentSnapshotRequest.from_dict(psp_instrument_snapshot_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
