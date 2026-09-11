# PaymentCollectionDetailsDTOSddCollectionDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional]
**expected_collection_date** | **datetime** |  | [optional]

## Example

```python
from billing_client.models.payment_collection_details_dto_sdd_collection_details_dto import PaymentCollectionDetailsDTOSddCollectionDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentCollectionDetailsDTOSddCollectionDetailsDTO from a JSON string
payment_collection_details_dto_sdd_collection_details_dto_instance = PaymentCollectionDetailsDTOSddCollectionDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentCollectionDetailsDTOSddCollectionDetailsDTO.to_json())

# convert the object into a dict
payment_collection_details_dto_sdd_collection_details_dto_dict = payment_collection_details_dto_sdd_collection_details_dto_instance.to_dict()
# create an instance of PaymentCollectionDetailsDTOSddCollectionDetailsDTO from a dict
payment_collection_details_dto_sdd_collection_details_dto_from_dict = PaymentCollectionDetailsDTOSddCollectionDetailsDTO.from_dict(payment_collection_details_dto_sdd_collection_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
