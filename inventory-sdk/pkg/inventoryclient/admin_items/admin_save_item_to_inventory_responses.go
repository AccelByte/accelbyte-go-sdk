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

// AdminSaveItemToInventoryReader is a Reader for the AdminSaveItemToInventory structure.
type AdminSaveItemToInventoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSaveItemToInventoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSaveItemToInventoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSaveItemToInventoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSaveItemToInventoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSaveItemToInventoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSaveItemToInventoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSaveItemToInventoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSaveItemToInventoryOK creates a AdminSaveItemToInventoryOK with default headers values
func NewAdminSaveItemToInventoryOK() *AdminSaveItemToInventoryOK {
	return &AdminSaveItemToInventoryOK{}
}

/*AdminSaveItemToInventoryOK handles this case with default header values.

  OK
*/
type AdminSaveItemToInventoryOK struct {
	Payload *inventoryclientmodels.ApimodelsItemResp
}

func (o *AdminSaveItemToInventoryOK) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminSaveItemToInventoryOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSaveItemToInventoryOK) ToJSONString() string {
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

func (o *AdminSaveItemToInventoryOK) GetPayload() *inventoryclientmodels.ApimodelsItemResp {
	return o.Payload
}

func (o *AdminSaveItemToInventoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveItemToInventoryBadRequest creates a AdminSaveItemToInventoryBadRequest with default headers values
func NewAdminSaveItemToInventoryBadRequest() *AdminSaveItemToInventoryBadRequest {
	return &AdminSaveItemToInventoryBadRequest{}
}

/*AdminSaveItemToInventoryBadRequest handles this case with default header values.

  Bad Request
*/
type AdminSaveItemToInventoryBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminSaveItemToInventoryBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminSaveItemToInventoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSaveItemToInventoryBadRequest) ToJSONString() string {
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

func (o *AdminSaveItemToInventoryBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminSaveItemToInventoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveItemToInventoryUnauthorized creates a AdminSaveItemToInventoryUnauthorized with default headers values
func NewAdminSaveItemToInventoryUnauthorized() *AdminSaveItemToInventoryUnauthorized {
	return &AdminSaveItemToInventoryUnauthorized{}
}

/*AdminSaveItemToInventoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSaveItemToInventoryUnauthorized struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminSaveItemToInventoryUnauthorized) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminSaveItemToInventoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSaveItemToInventoryUnauthorized) ToJSONString() string {
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

func (o *AdminSaveItemToInventoryUnauthorized) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminSaveItemToInventoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveItemToInventoryForbidden creates a AdminSaveItemToInventoryForbidden with default headers values
func NewAdminSaveItemToInventoryForbidden() *AdminSaveItemToInventoryForbidden {
	return &AdminSaveItemToInventoryForbidden{}
}

/*AdminSaveItemToInventoryForbidden handles this case with default header values.

  Forbidden
*/
type AdminSaveItemToInventoryForbidden struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminSaveItemToInventoryForbidden) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminSaveItemToInventoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSaveItemToInventoryForbidden) ToJSONString() string {
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

func (o *AdminSaveItemToInventoryForbidden) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminSaveItemToInventoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveItemToInventoryNotFound creates a AdminSaveItemToInventoryNotFound with default headers values
func NewAdminSaveItemToInventoryNotFound() *AdminSaveItemToInventoryNotFound {
	return &AdminSaveItemToInventoryNotFound{}
}

/*AdminSaveItemToInventoryNotFound handles this case with default header values.

  Not Found
*/
type AdminSaveItemToInventoryNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminSaveItemToInventoryNotFound) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminSaveItemToInventoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSaveItemToInventoryNotFound) ToJSONString() string {
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

func (o *AdminSaveItemToInventoryNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminSaveItemToInventoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveItemToInventoryInternalServerError creates a AdminSaveItemToInventoryInternalServerError with default headers values
func NewAdminSaveItemToInventoryInternalServerError() *AdminSaveItemToInventoryInternalServerError {
	return &AdminSaveItemToInventoryInternalServerError{}
}

/*AdminSaveItemToInventoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSaveItemToInventoryInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminSaveItemToInventoryInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items][%d] adminSaveItemToInventoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSaveItemToInventoryInternalServerError) ToJSONString() string {
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

func (o *AdminSaveItemToInventoryInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminSaveItemToInventoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
