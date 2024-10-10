// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_items

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
)

// PublicBulkUpdateMyItemsReader is a Reader for the PublicBulkUpdateMyItems structure.
type PublicBulkUpdateMyItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkUpdateMyItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkUpdateMyItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicBulkUpdateMyItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicBulkUpdateMyItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicBulkUpdateMyItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkUpdateMyItemsOK creates a PublicBulkUpdateMyItemsOK with default headers values
func NewPublicBulkUpdateMyItemsOK() *PublicBulkUpdateMyItemsOK {
	return &PublicBulkUpdateMyItemsOK{}
}

/*PublicBulkUpdateMyItemsOK handles this case with default header values.

  OK
*/
type PublicBulkUpdateMyItemsOK struct {
	Payload []*inventoryclientmodels.ApimodelsUpdateItemResp
}

func (o *PublicBulkUpdateMyItemsOK) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicBulkUpdateMyItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkUpdateMyItemsOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicBulkUpdateMyItemsOK) GetPayload() []*inventoryclientmodels.ApimodelsUpdateItemResp {
	return o.Payload
}

func (o *PublicBulkUpdateMyItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicBulkUpdateMyItemsBadRequest creates a PublicBulkUpdateMyItemsBadRequest with default headers values
func NewPublicBulkUpdateMyItemsBadRequest() *PublicBulkUpdateMyItemsBadRequest {
	return &PublicBulkUpdateMyItemsBadRequest{}
}

/*PublicBulkUpdateMyItemsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicBulkUpdateMyItemsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicBulkUpdateMyItemsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicBulkUpdateMyItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicBulkUpdateMyItemsBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicBulkUpdateMyItemsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicBulkUpdateMyItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicBulkUpdateMyItemsNotFound creates a PublicBulkUpdateMyItemsNotFound with default headers values
func NewPublicBulkUpdateMyItemsNotFound() *PublicBulkUpdateMyItemsNotFound {
	return &PublicBulkUpdateMyItemsNotFound{}
}

/*PublicBulkUpdateMyItemsNotFound handles this case with default header values.

  Not Found
*/
type PublicBulkUpdateMyItemsNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicBulkUpdateMyItemsNotFound) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicBulkUpdateMyItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicBulkUpdateMyItemsNotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicBulkUpdateMyItemsNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicBulkUpdateMyItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicBulkUpdateMyItemsInternalServerError creates a PublicBulkUpdateMyItemsInternalServerError with default headers values
func NewPublicBulkUpdateMyItemsInternalServerError() *PublicBulkUpdateMyItemsInternalServerError {
	return &PublicBulkUpdateMyItemsInternalServerError{}
}

/*PublicBulkUpdateMyItemsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicBulkUpdateMyItemsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicBulkUpdateMyItemsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicBulkUpdateMyItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicBulkUpdateMyItemsInternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicBulkUpdateMyItemsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicBulkUpdateMyItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
