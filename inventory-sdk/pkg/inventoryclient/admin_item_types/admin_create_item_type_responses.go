// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_item_types

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

// AdminCreateItemTypeReader is a Reader for the AdminCreateItemType structure.
type AdminCreateItemTypeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateItemTypeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateItemTypeCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateItemTypeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateItemTypeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateItemTypeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/admin/namespaces/{namespace}/itemtypes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateItemTypeCreated creates a AdminCreateItemTypeCreated with default headers values
func NewAdminCreateItemTypeCreated() *AdminCreateItemTypeCreated {
	return &AdminCreateItemTypeCreated{}
}

/*AdminCreateItemTypeCreated handles this case with default header values.

  Created
*/
type AdminCreateItemTypeCreated struct {
	Payload *inventoryclientmodels.ApimodelsCreateItemTypeResp
}

func (o *AdminCreateItemTypeCreated) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/itemtypes][%d] adminCreateItemTypeCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateItemTypeCreated) ToJSONString() string {
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

func (o *AdminCreateItemTypeCreated) GetPayload() *inventoryclientmodels.ApimodelsCreateItemTypeResp {
	return o.Payload
}

func (o *AdminCreateItemTypeCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsCreateItemTypeResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateItemTypeBadRequest creates a AdminCreateItemTypeBadRequest with default headers values
func NewAdminCreateItemTypeBadRequest() *AdminCreateItemTypeBadRequest {
	return &AdminCreateItemTypeBadRequest{}
}

/*AdminCreateItemTypeBadRequest handles this case with default header values.

  Bad Request
*/
type AdminCreateItemTypeBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminCreateItemTypeBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/itemtypes][%d] adminCreateItemTypeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateItemTypeBadRequest) ToJSONString() string {
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

func (o *AdminCreateItemTypeBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminCreateItemTypeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateItemTypeConflict creates a AdminCreateItemTypeConflict with default headers values
func NewAdminCreateItemTypeConflict() *AdminCreateItemTypeConflict {
	return &AdminCreateItemTypeConflict{}
}

/*AdminCreateItemTypeConflict handles this case with default header values.

  Conflict
*/
type AdminCreateItemTypeConflict struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminCreateItemTypeConflict) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/itemtypes][%d] adminCreateItemTypeConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateItemTypeConflict) ToJSONString() string {
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

func (o *AdminCreateItemTypeConflict) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminCreateItemTypeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateItemTypeInternalServerError creates a AdminCreateItemTypeInternalServerError with default headers values
func NewAdminCreateItemTypeInternalServerError() *AdminCreateItemTypeInternalServerError {
	return &AdminCreateItemTypeInternalServerError{}
}

/*AdminCreateItemTypeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCreateItemTypeInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminCreateItemTypeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/itemtypes][%d] adminCreateItemTypeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateItemTypeInternalServerError) ToJSONString() string {
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

func (o *AdminCreateItemTypeInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminCreateItemTypeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
