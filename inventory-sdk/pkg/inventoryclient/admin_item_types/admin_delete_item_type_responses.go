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

// AdminDeleteItemTypeReader is a Reader for the AdminDeleteItemType structure.
type AdminDeleteItemTypeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteItemTypeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteItemTypeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteItemTypeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteItemTypeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteItemTypeNoContent creates a AdminDeleteItemTypeNoContent with default headers values
func NewAdminDeleteItemTypeNoContent() *AdminDeleteItemTypeNoContent {
	return &AdminDeleteItemTypeNoContent{}
}

/*AdminDeleteItemTypeNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteItemTypeNoContent struct {
}

func (o *AdminDeleteItemTypeNoContent) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName}][%d] adminDeleteItemTypeNoContent ", 204)
}

func (o *AdminDeleteItemTypeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteItemTypeNotFound creates a AdminDeleteItemTypeNotFound with default headers values
func NewAdminDeleteItemTypeNotFound() *AdminDeleteItemTypeNotFound {
	return &AdminDeleteItemTypeNotFound{}
}

/*AdminDeleteItemTypeNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteItemTypeNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminDeleteItemTypeNotFound) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName}][%d] adminDeleteItemTypeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteItemTypeNotFound) ToJSONString() string {
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

func (o *AdminDeleteItemTypeNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminDeleteItemTypeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteItemTypeInternalServerError creates a AdminDeleteItemTypeInternalServerError with default headers values
func NewAdminDeleteItemTypeInternalServerError() *AdminDeleteItemTypeInternalServerError {
	return &AdminDeleteItemTypeInternalServerError{}
}

/*AdminDeleteItemTypeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteItemTypeInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminDeleteItemTypeInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName}][%d] adminDeleteItemTypeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteItemTypeInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteItemTypeInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminDeleteItemTypeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
