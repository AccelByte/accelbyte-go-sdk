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

// AdminBulkRemoveItemsReader is a Reader for the AdminBulkRemoveItems structure.
type AdminBulkRemoveItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkRemoveItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkRemoveItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkRemoveItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBulkRemoveItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkRemoveItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkRemoveItemsOK creates a AdminBulkRemoveItemsOK with default headers values
func NewAdminBulkRemoveItemsOK() *AdminBulkRemoveItemsOK {
	return &AdminBulkRemoveItemsOK{}
}

/*AdminBulkRemoveItemsOK handles this case with default header values.

  OK
*/
type AdminBulkRemoveItemsOK struct {
	Payload []*inventoryclientmodels.ApimodelsUpdateItemResp
}

func (o *AdminBulkRemoveItemsOK) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminBulkRemoveItemsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkRemoveItemsOK) ToJSONString() string {
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

func (o *AdminBulkRemoveItemsOK) GetPayload() []*inventoryclientmodels.ApimodelsUpdateItemResp {
	return o.Payload
}

func (o *AdminBulkRemoveItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkRemoveItemsBadRequest creates a AdminBulkRemoveItemsBadRequest with default headers values
func NewAdminBulkRemoveItemsBadRequest() *AdminBulkRemoveItemsBadRequest {
	return &AdminBulkRemoveItemsBadRequest{}
}

/*AdminBulkRemoveItemsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminBulkRemoveItemsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkRemoveItemsBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminBulkRemoveItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkRemoveItemsBadRequest) ToJSONString() string {
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

func (o *AdminBulkRemoveItemsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkRemoveItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkRemoveItemsNotFound creates a AdminBulkRemoveItemsNotFound with default headers values
func NewAdminBulkRemoveItemsNotFound() *AdminBulkRemoveItemsNotFound {
	return &AdminBulkRemoveItemsNotFound{}
}

/*AdminBulkRemoveItemsNotFound handles this case with default header values.

  Not Found
*/
type AdminBulkRemoveItemsNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkRemoveItemsNotFound) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminBulkRemoveItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBulkRemoveItemsNotFound) ToJSONString() string {
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

func (o *AdminBulkRemoveItemsNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkRemoveItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkRemoveItemsInternalServerError creates a AdminBulkRemoveItemsInternalServerError with default headers values
func NewAdminBulkRemoveItemsInternalServerError() *AdminBulkRemoveItemsInternalServerError {
	return &AdminBulkRemoveItemsInternalServerError{}
}

/*AdminBulkRemoveItemsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminBulkRemoveItemsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkRemoveItemsInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminBulkRemoveItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkRemoveItemsInternalServerError) ToJSONString() string {
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

func (o *AdminBulkRemoveItemsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkRemoveItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
