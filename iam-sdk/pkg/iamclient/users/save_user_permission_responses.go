// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// SaveUserPermissionReader is a Reader for the SaveUserPermission structure.
type SaveUserPermissionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SaveUserPermissionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSaveUserPermissionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSaveUserPermissionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSaveUserPermissionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSaveUserPermissionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSaveUserPermissionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSaveUserPermissionNoContent creates a SaveUserPermissionNoContent with default headers values
func NewSaveUserPermissionNoContent() *SaveUserPermissionNoContent {
	return &SaveUserPermissionNoContent{}
}

/*SaveUserPermissionNoContent handles this case with default header values.

  Operation succeeded
*/
type SaveUserPermissionNoContent struct {
}

func (o *SaveUserPermissionNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions][%d] saveUserPermissionNoContent ", 204)
}

func (o *SaveUserPermissionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSaveUserPermissionBadRequest creates a SaveUserPermissionBadRequest with default headers values
func NewSaveUserPermissionBadRequest() *SaveUserPermissionBadRequest {
	return &SaveUserPermissionBadRequest{}
}

/*SaveUserPermissionBadRequest handles this case with default header values.

  Invalid request
*/
type SaveUserPermissionBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SaveUserPermissionBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions][%d] saveUserPermissionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SaveUserPermissionBadRequest) ToJSONString() string {
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

func (o *SaveUserPermissionBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SaveUserPermissionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSaveUserPermissionUnauthorized creates a SaveUserPermissionUnauthorized with default headers values
func NewSaveUserPermissionUnauthorized() *SaveUserPermissionUnauthorized {
	return &SaveUserPermissionUnauthorized{}
}

/*SaveUserPermissionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SaveUserPermissionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SaveUserPermissionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions][%d] saveUserPermissionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SaveUserPermissionUnauthorized) ToJSONString() string {
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

func (o *SaveUserPermissionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SaveUserPermissionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSaveUserPermissionForbidden creates a SaveUserPermissionForbidden with default headers values
func NewSaveUserPermissionForbidden() *SaveUserPermissionForbidden {
	return &SaveUserPermissionForbidden{}
}

/*SaveUserPermissionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type SaveUserPermissionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SaveUserPermissionForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions][%d] saveUserPermissionForbidden  %+v", 403, o.ToJSONString())
}

func (o *SaveUserPermissionForbidden) ToJSONString() string {
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

func (o *SaveUserPermissionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SaveUserPermissionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSaveUserPermissionNotFound creates a SaveUserPermissionNotFound with default headers values
func NewSaveUserPermissionNotFound() *SaveUserPermissionNotFound {
	return &SaveUserPermissionNotFound{}
}

/*SaveUserPermissionNotFound handles this case with default header values.

  Data not found
*/
type SaveUserPermissionNotFound struct {
}

func (o *SaveUserPermissionNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions][%d] saveUserPermissionNotFound ", 404)
}

func (o *SaveUserPermissionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
