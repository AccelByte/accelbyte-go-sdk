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

// DeleteInventoryReader is a Reader for the DeleteInventory structure.
type DeleteInventoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteInventoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteInventoryNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteInventoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteInventoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteInventoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteInventoryNoContent creates a DeleteInventoryNoContent with default headers values
func NewDeleteInventoryNoContent() *DeleteInventoryNoContent {
	return &DeleteInventoryNoContent{}
}

/*DeleteInventoryNoContent handles this case with default header values.

  No Content
*/
type DeleteInventoryNoContent struct {
}

func (o *DeleteInventoryNoContent) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}][%d] deleteInventoryNoContent ", 204)
}

func (o *DeleteInventoryNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteInventoryBadRequest creates a DeleteInventoryBadRequest with default headers values
func NewDeleteInventoryBadRequest() *DeleteInventoryBadRequest {
	return &DeleteInventoryBadRequest{}
}

/*DeleteInventoryBadRequest handles this case with default header values.

  Bad Request
*/
type DeleteInventoryBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *DeleteInventoryBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}][%d] deleteInventoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteInventoryBadRequest) ToJSONString() string {
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

func (o *DeleteInventoryBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *DeleteInventoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteInventoryNotFound creates a DeleteInventoryNotFound with default headers values
func NewDeleteInventoryNotFound() *DeleteInventoryNotFound {
	return &DeleteInventoryNotFound{}
}

/*DeleteInventoryNotFound handles this case with default header values.

  Not Found
*/
type DeleteInventoryNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *DeleteInventoryNotFound) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}][%d] deleteInventoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteInventoryNotFound) ToJSONString() string {
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

func (o *DeleteInventoryNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *DeleteInventoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteInventoryInternalServerError creates a DeleteInventoryInternalServerError with default headers values
func NewDeleteInventoryInternalServerError() *DeleteInventoryInternalServerError {
	return &DeleteInventoryInternalServerError{}
}

/*DeleteInventoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteInventoryInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *DeleteInventoryInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}][%d] deleteInventoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteInventoryInternalServerError) ToJSONString() string {
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

func (o *DeleteInventoryInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *DeleteInventoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
