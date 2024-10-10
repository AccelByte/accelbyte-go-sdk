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

// PublicBulkRemoveMyItemsReader is a Reader for the PublicBulkRemoveMyItems structure.
type PublicBulkRemoveMyItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkRemoveMyItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkRemoveMyItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicBulkRemoveMyItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicBulkRemoveMyItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicBulkRemoveMyItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkRemoveMyItemsOK creates a PublicBulkRemoveMyItemsOK with default headers values
func NewPublicBulkRemoveMyItemsOK() *PublicBulkRemoveMyItemsOK {
	return &PublicBulkRemoveMyItemsOK{}
}

/*PublicBulkRemoveMyItemsOK handles this case with default header values.

  OK
*/
type PublicBulkRemoveMyItemsOK struct {
	Payload []*inventoryclientmodels.ApimodelsUpdateItemResp
}

func (o *PublicBulkRemoveMyItemsOK) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicBulkRemoveMyItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkRemoveMyItemsOK) ToJSONString() string {
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

func (o *PublicBulkRemoveMyItemsOK) GetPayload() []*inventoryclientmodels.ApimodelsUpdateItemResp {
	return o.Payload
}

func (o *PublicBulkRemoveMyItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkRemoveMyItemsBadRequest creates a PublicBulkRemoveMyItemsBadRequest with default headers values
func NewPublicBulkRemoveMyItemsBadRequest() *PublicBulkRemoveMyItemsBadRequest {
	return &PublicBulkRemoveMyItemsBadRequest{}
}

/*PublicBulkRemoveMyItemsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicBulkRemoveMyItemsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicBulkRemoveMyItemsBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicBulkRemoveMyItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicBulkRemoveMyItemsBadRequest) ToJSONString() string {
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

func (o *PublicBulkRemoveMyItemsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicBulkRemoveMyItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkRemoveMyItemsNotFound creates a PublicBulkRemoveMyItemsNotFound with default headers values
func NewPublicBulkRemoveMyItemsNotFound() *PublicBulkRemoveMyItemsNotFound {
	return &PublicBulkRemoveMyItemsNotFound{}
}

/*PublicBulkRemoveMyItemsNotFound handles this case with default header values.

  Not Found
*/
type PublicBulkRemoveMyItemsNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicBulkRemoveMyItemsNotFound) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicBulkRemoveMyItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicBulkRemoveMyItemsNotFound) ToJSONString() string {
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

func (o *PublicBulkRemoveMyItemsNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicBulkRemoveMyItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkRemoveMyItemsInternalServerError creates a PublicBulkRemoveMyItemsInternalServerError with default headers values
func NewPublicBulkRemoveMyItemsInternalServerError() *PublicBulkRemoveMyItemsInternalServerError {
	return &PublicBulkRemoveMyItemsInternalServerError{}
}

/*PublicBulkRemoveMyItemsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicBulkRemoveMyItemsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicBulkRemoveMyItemsInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items][%d] publicBulkRemoveMyItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicBulkRemoveMyItemsInternalServerError) ToJSONString() string {
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

func (o *PublicBulkRemoveMyItemsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicBulkRemoveMyItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
