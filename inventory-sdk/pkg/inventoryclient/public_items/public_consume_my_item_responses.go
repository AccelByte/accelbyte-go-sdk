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

// PublicConsumeMyItemReader is a Reader for the PublicConsumeMyItem structure.
type PublicConsumeMyItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicConsumeMyItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicConsumeMyItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicConsumeMyItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicConsumeMyItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicConsumeMyItemInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/consume returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicConsumeMyItemOK creates a PublicConsumeMyItemOK with default headers values
func NewPublicConsumeMyItemOK() *PublicConsumeMyItemOK {
	return &PublicConsumeMyItemOK{}
}

/*PublicConsumeMyItemOK handles this case with default header values.

  OK
*/
type PublicConsumeMyItemOK struct {
	Payload *inventoryclientmodels.ApimodelsItemResp
}

func (o *PublicConsumeMyItemOK) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/consume][%d] publicConsumeMyItemOK  %+v", 200, o.ToJSONString())
}

func (o *PublicConsumeMyItemOK) ToJSONString() string {
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

func (o *PublicConsumeMyItemOK) GetPayload() *inventoryclientmodels.ApimodelsItemResp {
	return o.Payload
}

func (o *PublicConsumeMyItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicConsumeMyItemBadRequest creates a PublicConsumeMyItemBadRequest with default headers values
func NewPublicConsumeMyItemBadRequest() *PublicConsumeMyItemBadRequest {
	return &PublicConsumeMyItemBadRequest{}
}

/*PublicConsumeMyItemBadRequest handles this case with default header values.

  Bad Request
*/
type PublicConsumeMyItemBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicConsumeMyItemBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/consume][%d] publicConsumeMyItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicConsumeMyItemBadRequest) ToJSONString() string {
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

func (o *PublicConsumeMyItemBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicConsumeMyItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicConsumeMyItemNotFound creates a PublicConsumeMyItemNotFound with default headers values
func NewPublicConsumeMyItemNotFound() *PublicConsumeMyItemNotFound {
	return &PublicConsumeMyItemNotFound{}
}

/*PublicConsumeMyItemNotFound handles this case with default header values.

  Not Found
*/
type PublicConsumeMyItemNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicConsumeMyItemNotFound) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/consume][%d] publicConsumeMyItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicConsumeMyItemNotFound) ToJSONString() string {
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

func (o *PublicConsumeMyItemNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicConsumeMyItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicConsumeMyItemInternalServerError creates a PublicConsumeMyItemInternalServerError with default headers values
func NewPublicConsumeMyItemInternalServerError() *PublicConsumeMyItemInternalServerError {
	return &PublicConsumeMyItemInternalServerError{}
}

/*PublicConsumeMyItemInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicConsumeMyItemInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *PublicConsumeMyItemInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/consume][%d] publicConsumeMyItemInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicConsumeMyItemInternalServerError) ToJSONString() string {
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

func (o *PublicConsumeMyItemInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *PublicConsumeMyItemInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
