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

// AdminBulkSaveItemReader is a Reader for the AdminBulkSaveItem structure.
type AdminBulkSaveItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkSaveItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkSaveItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkSaveItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkSaveItemUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkSaveItemForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBulkSaveItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminBulkSaveItemUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkSaveItemInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkSaveItemOK creates a AdminBulkSaveItemOK with default headers values
func NewAdminBulkSaveItemOK() *AdminBulkSaveItemOK {
	return &AdminBulkSaveItemOK{}
}

/*AdminBulkSaveItemOK handles this case with default header values.

  OK
*/
type AdminBulkSaveItemOK struct {
	Payload []*inventoryclientmodels.ApimodelsBulkSaveItemResp
}

func (o *AdminBulkSaveItemOK) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk][%d] adminBulkSaveItemOK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkSaveItemOK) ToJSONString() string {
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

func (o *AdminBulkSaveItemOK) GetPayload() []*inventoryclientmodels.ApimodelsBulkSaveItemResp {
	return o.Payload
}

func (o *AdminBulkSaveItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkSaveItemBadRequest creates a AdminBulkSaveItemBadRequest with default headers values
func NewAdminBulkSaveItemBadRequest() *AdminBulkSaveItemBadRequest {
	return &AdminBulkSaveItemBadRequest{}
}

/*AdminBulkSaveItemBadRequest handles this case with default header values.

  Bad Request
*/
type AdminBulkSaveItemBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk][%d] adminBulkSaveItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkSaveItemBadRequest) ToJSONString() string {
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

func (o *AdminBulkSaveItemBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkSaveItemUnauthorized creates a AdminBulkSaveItemUnauthorized with default headers values
func NewAdminBulkSaveItemUnauthorized() *AdminBulkSaveItemUnauthorized {
	return &AdminBulkSaveItemUnauthorized{}
}

/*AdminBulkSaveItemUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminBulkSaveItemUnauthorized struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemUnauthorized) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk][%d] adminBulkSaveItemUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkSaveItemUnauthorized) ToJSONString() string {
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

func (o *AdminBulkSaveItemUnauthorized) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkSaveItemForbidden creates a AdminBulkSaveItemForbidden with default headers values
func NewAdminBulkSaveItemForbidden() *AdminBulkSaveItemForbidden {
	return &AdminBulkSaveItemForbidden{}
}

/*AdminBulkSaveItemForbidden handles this case with default header values.

  Forbidden
*/
type AdminBulkSaveItemForbidden struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemForbidden) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk][%d] adminBulkSaveItemForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkSaveItemForbidden) ToJSONString() string {
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

func (o *AdminBulkSaveItemForbidden) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkSaveItemNotFound creates a AdminBulkSaveItemNotFound with default headers values
func NewAdminBulkSaveItemNotFound() *AdminBulkSaveItemNotFound {
	return &AdminBulkSaveItemNotFound{}
}

/*AdminBulkSaveItemNotFound handles this case with default header values.

  Not Found
*/
type AdminBulkSaveItemNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemNotFound) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk][%d] adminBulkSaveItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBulkSaveItemNotFound) ToJSONString() string {
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

func (o *AdminBulkSaveItemNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkSaveItemUnprocessableEntity creates a AdminBulkSaveItemUnprocessableEntity with default headers values
func NewAdminBulkSaveItemUnprocessableEntity() *AdminBulkSaveItemUnprocessableEntity {
	return &AdminBulkSaveItemUnprocessableEntity{}
}

/*AdminBulkSaveItemUnprocessableEntity handles this case with default header values.

  Unprocessable Entity
*/
type AdminBulkSaveItemUnprocessableEntity struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk][%d] adminBulkSaveItemUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminBulkSaveItemUnprocessableEntity) ToJSONString() string {
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

func (o *AdminBulkSaveItemUnprocessableEntity) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkSaveItemInternalServerError creates a AdminBulkSaveItemInternalServerError with default headers values
func NewAdminBulkSaveItemInternalServerError() *AdminBulkSaveItemInternalServerError {
	return &AdminBulkSaveItemInternalServerError{}
}

/*AdminBulkSaveItemInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminBulkSaveItemInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminBulkSaveItemInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk][%d] adminBulkSaveItemInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkSaveItemInternalServerError) ToJSONString() string {
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

func (o *AdminBulkSaveItemInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminBulkSaveItemInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
