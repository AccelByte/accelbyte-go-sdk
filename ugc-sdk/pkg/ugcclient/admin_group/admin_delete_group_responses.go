// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// AdminDeleteGroupReader is a Reader for the AdminDeleteGroup structure.
type AdminDeleteGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteGroupNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteGroupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteGroupNoContent creates a AdminDeleteGroupNoContent with default headers values
func NewAdminDeleteGroupNoContent() *AdminDeleteGroupNoContent {
	return &AdminDeleteGroupNoContent{}
}

/*AdminDeleteGroupNoContent handles this case with default header values.

  Group deleted
*/
type AdminDeleteGroupNoContent struct {
}

func (o *AdminDeleteGroupNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}][%d] adminDeleteGroupNoContent ", 204)
}

func (o *AdminDeleteGroupNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteGroupUnauthorized creates a AdminDeleteGroupUnauthorized with default headers values
func NewAdminDeleteGroupUnauthorized() *AdminDeleteGroupUnauthorized {
	return &AdminDeleteGroupUnauthorized{}
}

/*AdminDeleteGroupUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteGroupUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteGroupUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}][%d] adminDeleteGroupUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteGroupUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteGroupUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteGroupNotFound creates a AdminDeleteGroupNotFound with default headers values
func NewAdminDeleteGroupNotFound() *AdminDeleteGroupNotFound {
	return &AdminDeleteGroupNotFound{}
}

/*AdminDeleteGroupNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772403</td><td>Group not found</td></tr></table>
*/
type AdminDeleteGroupNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteGroupNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}][%d] adminDeleteGroupNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteGroupNotFound) ToJSONString() string {
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

func (o *AdminDeleteGroupNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteGroupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteGroupInternalServerError creates a AdminDeleteGroupInternalServerError with default headers values
func NewAdminDeleteGroupInternalServerError() *AdminDeleteGroupInternalServerError {
	return &AdminDeleteGroupInternalServerError{}
}

/*AdminDeleteGroupInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772402</td><td>Unable delete groups</td></tr></table>
*/
type AdminDeleteGroupInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteGroupInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}][%d] adminDeleteGroupInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteGroupInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteGroupInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
