// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_tags

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

// AdminDeleteTagReader is a Reader for the AdminDeleteTag structure.
type AdminDeleteTagReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteTagReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteTagNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteTagNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteTagInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /inventory/v1/admin/namespaces/{namespace}/tags/{tagName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteTagNoContent creates a AdminDeleteTagNoContent with default headers values
func NewAdminDeleteTagNoContent() *AdminDeleteTagNoContent {
	return &AdminDeleteTagNoContent{}
}

/*AdminDeleteTagNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteTagNoContent struct {
}

func (o *AdminDeleteTagNoContent) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/tags/{tagName}][%d] adminDeleteTagNoContent ", 204)
}

func (o *AdminDeleteTagNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteTagNotFound creates a AdminDeleteTagNotFound with default headers values
func NewAdminDeleteTagNotFound() *AdminDeleteTagNotFound {
	return &AdminDeleteTagNotFound{}
}

/*AdminDeleteTagNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteTagNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminDeleteTagNotFound) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/tags/{tagName}][%d] adminDeleteTagNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteTagNotFound) ToJSONString() string {
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

func (o *AdminDeleteTagNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminDeleteTagNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTagInternalServerError creates a AdminDeleteTagInternalServerError with default headers values
func NewAdminDeleteTagInternalServerError() *AdminDeleteTagInternalServerError {
	return &AdminDeleteTagInternalServerError{}
}

/*AdminDeleteTagInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteTagInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminDeleteTagInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/tags/{tagName}][%d] adminDeleteTagInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteTagInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteTagInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminDeleteTagInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
