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

// AddUserPermissionReader is a Reader for the AddUserPermission structure.
type AddUserPermissionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddUserPermissionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAddUserPermissionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddUserPermissionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddUserPermissionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddUserPermissionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddUserPermissionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddUserPermissionNoContent creates a AddUserPermissionNoContent with default headers values
func NewAddUserPermissionNoContent() *AddUserPermissionNoContent {
	return &AddUserPermissionNoContent{}
}

/*AddUserPermissionNoContent handles this case with default header values.

  Operation succeeded
*/
type AddUserPermissionNoContent struct {
}

func (o *AddUserPermissionNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] addUserPermissionNoContent ", 204)
}

func (o *AddUserPermissionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddUserPermissionBadRequest creates a AddUserPermissionBadRequest with default headers values
func NewAddUserPermissionBadRequest() *AddUserPermissionBadRequest {
	return &AddUserPermissionBadRequest{}
}

/*AddUserPermissionBadRequest handles this case with default header values.

  Invalid request
*/
type AddUserPermissionBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddUserPermissionBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] addUserPermissionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddUserPermissionBadRequest) ToJSONString() string {
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

func (o *AddUserPermissionBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddUserPermissionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddUserPermissionUnauthorized creates a AddUserPermissionUnauthorized with default headers values
func NewAddUserPermissionUnauthorized() *AddUserPermissionUnauthorized {
	return &AddUserPermissionUnauthorized{}
}

/*AddUserPermissionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AddUserPermissionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddUserPermissionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] addUserPermissionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddUserPermissionUnauthorized) ToJSONString() string {
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

func (o *AddUserPermissionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddUserPermissionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddUserPermissionForbidden creates a AddUserPermissionForbidden with default headers values
func NewAddUserPermissionForbidden() *AddUserPermissionForbidden {
	return &AddUserPermissionForbidden{}
}

/*AddUserPermissionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AddUserPermissionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddUserPermissionForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] addUserPermissionForbidden  %+v", 403, o.ToJSONString())
}

func (o *AddUserPermissionForbidden) ToJSONString() string {
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

func (o *AddUserPermissionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddUserPermissionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddUserPermissionNotFound creates a AddUserPermissionNotFound with default headers values
func NewAddUserPermissionNotFound() *AddUserPermissionNotFound {
	return &AddUserPermissionNotFound{}
}

/*AddUserPermissionNotFound handles this case with default header values.

  Data not found
*/
type AddUserPermissionNotFound struct {
}

func (o *AddUserPermissionNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] addUserPermissionNotFound ", 404)
}

func (o *AddUserPermissionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
