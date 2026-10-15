# PaymentCollectionDetailsDTOOffSessionCollectionDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**expected_collection_date** | **datetime** |  | [optional] 
**requested_rail** | [**PaymentRail**](PaymentRail.md) |  | [optional] 

## Example

```python
from billing_client.models.payment_collection_details_dto_off_session_collection_details_dto import PaymentCollectionDetailsDTOOffSessionCollectionDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentCollectionDetailsDTOOffSessionCollectionDetailsDTO from a JSON string
payment_collection_details_dto_off_session_collection_details_dto_instance = PaymentCollectionDetailsDTOOffSessionCollectionDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentCollectionDetailsDTOOffSessionCollectionDetailsDTO.to_json())

# convert the object into a dict
payment_collection_details_dto_off_session_collection_details_dto_dict = payment_collection_details_dto_off_session_collection_details_dto_instance.to_dict()
# create an instance of PaymentCollectionDetailsDTOOffSessionCollectionDetailsDTO from a dict
payment_collection_details_dto_off_session_collection_details_dto_from_dict = PaymentCollectionDetailsDTOOffSessionCollectionDetailsDTO.from_dict(payment_collection_details_dto_off_session_collection_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


