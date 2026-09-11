# PrepaymentAccountReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional]
**number** | **str** |  | [optional]

## Example

```python
from masterdata_client.models.prepayment_account_reference_dto import PrepaymentAccountReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentAccountReferenceDTO from a JSON string
prepayment_account_reference_dto_instance = PrepaymentAccountReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentAccountReferenceDTO.to_json())

# convert the object into a dict
prepayment_account_reference_dto_dict = prepayment_account_reference_dto_instance.to_dict()
# create an instance of PrepaymentAccountReferenceDTO from a dict
prepayment_account_reference_dto_from_dict = PrepaymentAccountReferenceDTO.from_dict(prepayment_account_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
