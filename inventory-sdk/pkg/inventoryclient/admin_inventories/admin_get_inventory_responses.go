// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_inventories

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

// AdminGetInventoryReader is a Reader for the AdminGetInventory structure.
type AdminGetInventoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetInventoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetInventoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetInventoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetInventoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetInventoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetInventoryOK creates a AdminGetInventoryOK with default headers values
func NewAdminGetInventoryOK() *AdminGetInventoryOK {
	return &AdminGetInventoryOK{}
}

/*AdminGetInventoryOK handles this case with default header values.

  OK
*/
type AdminGetInventoryOK struct {
	Payload *inventoryclientmodels.ApimodelsInventoryResp
}

func (o *AdminGetInventoryOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}][%d] adminGetInventoryOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetInventoryOK) ToJSONString() string {
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

func (o *AdminGetInventoryOK) GetPayload() *inventoryclientmodels.ApimodelsInventoryResp {
	return o.Payload
}

func (o *AdminGetInventoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsInventoryResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetInventoryBadRequest creates a AdminGetInventoryBadRequest with default headers values
func NewAdminGetInventoryBadRequest() *AdminGetInventoryBadRequest {
	return &AdminGetInventoryBadRequest{}
}

/*AdminGetInventoryBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetInventoryBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminGetInventoryBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}][%d] adminGetInventoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetInventoryBadRequest) ToJSONString() string {
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

func (o *AdminGetInventoryBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminGetInventoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInventoryNotFound creates a AdminGetInventoryNotFound with default headers values
func NewAdminGetInventoryNotFound() *AdminGetInventoryNotFound {
	return &AdminGetInventoryNotFound{}
}

/*AdminGetInventoryNotFound handles this case with default header values.

  Not Found
*/
type AdminGetInventoryNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminGetInventoryNotFound) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}][%d] adminGetInventoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetInventoryNotFound) ToJSONString() string {
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

func (o *AdminGetInventoryNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminGetInventoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInventoryInternalServerError creates a AdminGetInventoryInternalServerError with default headers values
func NewAdminGetInventoryInternalServerError() *AdminGetInventoryInternalServerError {
	return &AdminGetInventoryInternalServerError{}
}

/*AdminGetInventoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetInventoryInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminGetInventoryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}][%d] adminGetInventoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetInventoryInternalServerError) ToJSONString() string {
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

func (o *AdminGetInventoryInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminGetInventoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
