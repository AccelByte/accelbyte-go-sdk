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

// AdminConsumeUserItemReader is a Reader for the AdminConsumeUserItem structure.
type AdminConsumeUserItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminConsumeUserItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminConsumeUserItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminConsumeUserItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminConsumeUserItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminConsumeUserItemInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminConsumeUserItemOK creates a AdminConsumeUserItemOK with default headers values
func NewAdminConsumeUserItemOK() *AdminConsumeUserItemOK {
	return &AdminConsumeUserItemOK{}
}

/*AdminConsumeUserItemOK handles this case with default header values.

  OK
*/
type AdminConsumeUserItemOK struct {
	Payload *inventoryclientmodels.ApimodelsItemResp
}

func (o *AdminConsumeUserItemOK) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume][%d] adminConsumeUserItemOK  %+v", 200, o.ToJSONString())
}

func (o *AdminConsumeUserItemOK) ToJSONString() string {
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

func (o *AdminConsumeUserItemOK) GetPayload() *inventoryclientmodels.ApimodelsItemResp {
	return o.Payload
}

func (o *AdminConsumeUserItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminConsumeUserItemBadRequest creates a AdminConsumeUserItemBadRequest with default headers values
func NewAdminConsumeUserItemBadRequest() *AdminConsumeUserItemBadRequest {
	return &AdminConsumeUserItemBadRequest{}
}

/*AdminConsumeUserItemBadRequest handles this case with default header values.

  Bad Request
*/
type AdminConsumeUserItemBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminConsumeUserItemBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume][%d] adminConsumeUserItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminConsumeUserItemBadRequest) ToJSONString() string {
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

func (o *AdminConsumeUserItemBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminConsumeUserItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminConsumeUserItemNotFound creates a AdminConsumeUserItemNotFound with default headers values
func NewAdminConsumeUserItemNotFound() *AdminConsumeUserItemNotFound {
	return &AdminConsumeUserItemNotFound{}
}

/*AdminConsumeUserItemNotFound handles this case with default header values.

  Not Found
*/
type AdminConsumeUserItemNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminConsumeUserItemNotFound) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume][%d] adminConsumeUserItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminConsumeUserItemNotFound) ToJSONString() string {
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

func (o *AdminConsumeUserItemNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminConsumeUserItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminConsumeUserItemInternalServerError creates a AdminConsumeUserItemInternalServerError with default headers values
func NewAdminConsumeUserItemInternalServerError() *AdminConsumeUserItemInternalServerError {
	return &AdminConsumeUserItemInternalServerError{}
}

/*AdminConsumeUserItemInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminConsumeUserItemInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminConsumeUserItemInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume][%d] adminConsumeUserItemInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminConsumeUserItemInternalServerError) ToJSONString() string {
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

func (o *AdminConsumeUserItemInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminConsumeUserItemInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
