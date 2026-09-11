# PaymentCollectionDetailsDTOSctCollectionDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional]

## Example

```python
from billing_client.models.payment_collection_details_dto_sct_collection_details_dto import PaymentCollectionDetailsDTOSctCollectionDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentCollectionDetailsDTOSctCollectionDetailsDTO from a JSON string
payment_collection_details_dto_sct_collection_details_dto_instance = PaymentCollectionDetailsDTOSctCollectionDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentCollectionDetailsDTOSctCollectionDetailsDTO.to_json())

# convert the object into a dict
payment_collection_details_dto_sct_collection_details_dto_dict = payment_collection_details_dto_sct_collection_details_dto_instance.to_dict()
# create an instance of PaymentCollectionDetailsDTOSctCollectionDetailsDTO from a dict
payment_collection_details_dto_sct_collection_details_dto_from_dict = PaymentCollectionDetailsDTOSctCollectionDetailsDTO.from_dict(payment_collection_details_dto_sct_collection_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
