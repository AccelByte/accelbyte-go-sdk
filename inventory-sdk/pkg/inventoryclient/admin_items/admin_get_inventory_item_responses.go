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

// AdminGetInventoryItemReader is a Reader for the AdminGetInventoryItem structure.
type AdminGetInventoryItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetInventoryItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetInventoryItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetInventoryItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetInventoryItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetInventoryItemInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items/{itemId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetInventoryItemOK creates a AdminGetInventoryItemOK with default headers values
func NewAdminGetInventoryItemOK() *AdminGetInventoryItemOK {
	return &AdminGetInventoryItemOK{}
}

/*AdminGetInventoryItemOK handles this case with default header values.

  OK
*/
type AdminGetInventoryItemOK struct {
	Payload *inventoryclientmodels.ApimodelsItemResp
}

func (o *AdminGetInventoryItemOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items/{itemId}][%d] adminGetInventoryItemOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetInventoryItemOK) ToJSONString() string {
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

func (o *AdminGetInventoryItemOK) GetPayload() *inventoryclientmodels.ApimodelsItemResp {
	return o.Payload
}

func (o *AdminGetInventoryItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsItemResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetInventoryItemBadRequest creates a AdminGetInventoryItemBadRequest with default headers values
func NewAdminGetInventoryItemBadRequest() *AdminGetInventoryItemBadRequest {
	return &AdminGetInventoryItemBadRequest{}
}

/*AdminGetInventoryItemBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetInventoryItemBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminGetInventoryItemBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items/{itemId}][%d] adminGetInventoryItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetInventoryItemBadRequest) ToJSONString() string {
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

func (o *AdminGetInventoryItemBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminGetInventoryItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetInventoryItemNotFound creates a AdminGetInventoryItemNotFound with default headers values
func NewAdminGetInventoryItemNotFound() *AdminGetInventoryItemNotFound {
	return &AdminGetInventoryItemNotFound{}
}

/*AdminGetInventoryItemNotFound handles this case with default header values.

  Not Found
*/
type AdminGetInventoryItemNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminGetInventoryItemNotFound) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items/{itemId}][%d] adminGetInventoryItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetInventoryItemNotFound) ToJSONString() string {
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

func (o *AdminGetInventoryItemNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminGetInventoryItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetInventoryItemInternalServerError creates a AdminGetInventoryItemInternalServerError with default headers values
func NewAdminGetInventoryItemInternalServerError() *AdminGetInventoryItemInternalServerError {
	return &AdminGetInventoryItemInternalServerError{}
}

/*AdminGetInventoryItemInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetInventoryItemInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminGetInventoryItemInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items/{itemId}][%d] adminGetInventoryItemInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetInventoryItemInternalServerError) ToJSONString() string {
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

func (o *AdminGetInventoryItemInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminGetInventoryItemInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
