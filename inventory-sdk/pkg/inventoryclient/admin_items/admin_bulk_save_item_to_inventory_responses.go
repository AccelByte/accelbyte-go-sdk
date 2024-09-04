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

// AdminBulkSaveItemToInventoryReader is a Reader for the AdminBulkSaveItemToInventory structure.
type AdminBulkSaveItemToInventoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkSaveItemToInventoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkSaveItemToInventoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkSaveItemToInventoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkSaveItemToInventoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkSaveItemToInventoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBulkSaveItemToInventoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminBulkSaveItemToInventoryUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkSaveItemToInventoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkSaveItemToInventoryOK creates a AdminBulkSaveItemToInventoryOK with default headers values
func NewAdminBulkSaveItemToInventoryOK() *AdminBulkSaveItemToInventoryOK {
	return &AdminBulkSaveItemToInventoryOK{}
}

/*AdminBulkSaveItemToInventoryOK handles this case with default header values.

  OK
*/
type AdminBulkSaveItemToInventoryOK struct {
	Payload []*inventoryclientmodels.ApimodelsBulkSaveItemResp
}

func (o *AdminBulkSaveItemToInventoryOK) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk][%d] adminBulkSaveItemToInventoryOK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkSaveItemToInventoryOK) ToJSONString() string {
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

func (o *AdminBulkSaveItemToInventoryOK) GetPayload() []*inventoryclientmodels.ApimodelsBulkSaveItemResp {
	return o.Payload
}

func (o *AdminBulkSaveItemToInventoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkSaveItemToInventoryBadRequest creates a AdminBulkSaveItemToInventoryBadRequest with default headers values
func NewAdminBulkSaveItemToInventoryBadRequest() *AdminBulkSaveItemToInventoryBadRequest {
	return &AdminBulkSaveItemToInventoryBadRequest{}
}

/*AdminBulkSaveItemToInventoryBadRequest handles this case with default header values.

  Bad Request
*/
type AdminBulkSaveItemToInventoryBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemToInventoryBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk][%d] adminBulkSaveItemToInventoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkSaveItemToInventoryBadRequest) ToJSONString() string {
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

func (o *AdminBulkSaveItemToInventoryBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemToInventoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkSaveItemToInventoryUnauthorized creates a AdminBulkSaveItemToInventoryUnauthorized with default headers values
func NewAdminBulkSaveItemToInventoryUnauthorized() *AdminBulkSaveItemToInventoryUnauthorized {
	return &AdminBulkSaveItemToInventoryUnauthorized{}
}

/*AdminBulkSaveItemToInventoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminBulkSaveItemToInventoryUnauthorized struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemToInventoryUnauthorized) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk][%d] adminBulkSaveItemToInventoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkSaveItemToInventoryUnauthorized) ToJSONString() string {
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

func (o *AdminBulkSaveItemToInventoryUnauthorized) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemToInventoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkSaveItemToInventoryForbidden creates a AdminBulkSaveItemToInventoryForbidden with default headers values
func NewAdminBulkSaveItemToInventoryForbidden() *AdminBulkSaveItemToInventoryForbidden {
	return &AdminBulkSaveItemToInventoryForbidden{}
}

/*AdminBulkSaveItemToInventoryForbidden handles this case with default header values.

  Forbidden
*/
type AdminBulkSaveItemToInventoryForbidden struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemToInventoryForbidden) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk][%d] adminBulkSaveItemToInventoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkSaveItemToInventoryForbidden) ToJSONString() string {
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

func (o *AdminBulkSaveItemToInventoryForbidden) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemToInventoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkSaveItemToInventoryNotFound creates a AdminBulkSaveItemToInventoryNotFound with default headers values
func NewAdminBulkSaveItemToInventoryNotFound() *AdminBulkSaveItemToInventoryNotFound {
	return &AdminBulkSaveItemToInventoryNotFound{}
}

/*AdminBulkSaveItemToInventoryNotFound handles this case with default header values.

  Not Found
*/
type AdminBulkSaveItemToInventoryNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemToInventoryNotFound) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk][%d] adminBulkSaveItemToInventoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBulkSaveItemToInventoryNotFound) ToJSONString() string {
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

func (o *AdminBulkSaveItemToInventoryNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemToInventoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkSaveItemToInventoryUnprocessableEntity creates a AdminBulkSaveItemToInventoryUnprocessableEntity with default headers values
func NewAdminBulkSaveItemToInventoryUnprocessableEntity() *AdminBulkSaveItemToInventoryUnprocessableEntity {
	return &AdminBulkSaveItemToInventoryUnprocessableEntity{}
}

/*AdminBulkSaveItemToInventoryUnprocessableEntity handles this case with default header values.

  Unprocessable Entity
*/
type AdminBulkSaveItemToInventoryUnprocessableEntity struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemToInventoryUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk][%d] adminBulkSaveItemToInventoryUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminBulkSaveItemToInventoryUnprocessableEntity) ToJSONString() string {
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

func (o *AdminBulkSaveItemToInventoryUnprocessableEntity) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemToInventoryUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkSaveItemToInventoryInternalServerError creates a AdminBulkSaveItemToInventoryInternalServerError with default headers values
func NewAdminBulkSaveItemToInventoryInternalServerError() *AdminBulkSaveItemToInventoryInternalServerError {
	return &AdminBulkSaveItemToInventoryInternalServerError{}
}

/*AdminBulkSaveItemToInventoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminBulkSaveItemToInventoryInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemToInventoryInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk][%d] adminBulkSaveItemToInventoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkSaveItemToInventoryInternalServerError) ToJSONString() string {
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

func (o *AdminBulkSaveItemToInventoryInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemToInventoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
