// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_items

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

// AdminBulkUpdateMyItemsReader is a Reader for the AdminBulkUpdateMyItems structure.
type AdminBulkUpdateMyItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkUpdateMyItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkUpdateMyItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkUpdateMyItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBulkUpdateMyItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkUpdateMyItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkUpdateMyItemsOK creates a AdminBulkUpdateMyItemsOK with default headers values
func NewAdminBulkUpdateMyItemsOK() *AdminBulkUpdateMyItemsOK {
	return &AdminBulkUpdateMyItemsOK{}
}

/*AdminBulkUpdateMyItemsOK handles this case with default header values.

  OK
*/
type AdminBulkUpdateMyItemsOK struct {
	Payload []*inventoryclientmodels.ApimodelsUpdateItemResp
}

func (o *AdminBulkUpdateMyItemsOK) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminBulkUpdateMyItemsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkUpdateMyItemsOK) ToJSONString() string {
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

func (o *AdminBulkUpdateMyItemsOK) GetPayload() []*inventoryclientmodels.ApimodelsUpdateItemResp {
	return o.Payload
}

func (o *AdminBulkUpdateMyItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUpdateMyItemsBadRequest creates a AdminBulkUpdateMyItemsBadRequest with default headers values
func NewAdminBulkUpdateMyItemsBadRequest() *AdminBulkUpdateMyItemsBadRequest {
	return &AdminBulkUpdateMyItemsBadRequest{}
}

/*AdminBulkUpdateMyItemsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminBulkUpdateMyItemsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkUpdateMyItemsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminBulkUpdateMyItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkUpdateMyItemsBadRequest) ToJSONString() string {
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

func (o *AdminBulkUpdateMyItemsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateMyItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUpdateMyItemsNotFound creates a AdminBulkUpdateMyItemsNotFound with default headers values
func NewAdminBulkUpdateMyItemsNotFound() *AdminBulkUpdateMyItemsNotFound {
	return &AdminBulkUpdateMyItemsNotFound{}
}

/*AdminBulkUpdateMyItemsNotFound handles this case with default header values.

  Not Found
*/
type AdminBulkUpdateMyItemsNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkUpdateMyItemsNotFound) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminBulkUpdateMyItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBulkUpdateMyItemsNotFound) ToJSONString() string {
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

func (o *AdminBulkUpdateMyItemsNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateMyItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUpdateMyItemsInternalServerError creates a AdminBulkUpdateMyItemsInternalServerError with default headers values
func NewAdminBulkUpdateMyItemsInternalServerError() *AdminBulkUpdateMyItemsInternalServerError {
	return &AdminBulkUpdateMyItemsInternalServerError{}
}

/*AdminBulkUpdateMyItemsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminBulkUpdateMyItemsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkUpdateMyItemsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminBulkUpdateMyItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkUpdateMyItemsInternalServerError) ToJSONString() string {
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

func (o *AdminBulkUpdateMyItemsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateMyItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
