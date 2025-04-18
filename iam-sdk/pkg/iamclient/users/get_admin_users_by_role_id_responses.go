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

// GetAdminUsersByRoleIDReader is a Reader for the GetAdminUsersByRoleID structure.
type GetAdminUsersByRoleIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAdminUsersByRoleIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAdminUsersByRoleIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAdminUsersByRoleIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAdminUsersByRoleIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAdminUsersByRoleIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAdminUsersByRoleIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAdminUsersByRoleIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/admin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAdminUsersByRoleIDOK creates a GetAdminUsersByRoleIDOK with default headers values
func NewGetAdminUsersByRoleIDOK() *GetAdminUsersByRoleIDOK {
	return &GetAdminUsersByRoleIDOK{}
}

/*GetAdminUsersByRoleIDOK handles this case with default header values.

  OK
*/
type GetAdminUsersByRoleIDOK struct {
	Payload *iamclientmodels.ModelGetAdminUsersResponse
}

func (o *GetAdminUsersByRoleIDOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/admin][%d] getAdminUsersByRoleIdOK  %+v", 200, o.ToJSONString())
}

func (o *GetAdminUsersByRoleIDOK) ToJSONString() string {
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

func (o *GetAdminUsersByRoleIDOK) GetPayload() *iamclientmodels.ModelGetAdminUsersResponse {
	return o.Payload
}

func (o *GetAdminUsersByRoleIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelGetAdminUsersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAdminUsersByRoleIDBadRequest creates a GetAdminUsersByRoleIDBadRequest with default headers values
func NewGetAdminUsersByRoleIDBadRequest() *GetAdminUsersByRoleIDBadRequest {
	return &GetAdminUsersByRoleIDBadRequest{}
}

/*GetAdminUsersByRoleIDBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20021</td><td>invalid pagination parameter</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10157</td><td>specified role is not admin role</td></tr></table>
*/
type GetAdminUsersByRoleIDBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetAdminUsersByRoleIDBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/admin][%d] getAdminUsersByRoleIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAdminUsersByRoleIDBadRequest) ToJSONString() string {
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

func (o *GetAdminUsersByRoleIDBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetAdminUsersByRoleIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAdminUsersByRoleIDUnauthorized creates a GetAdminUsersByRoleIDUnauthorized with default headers values
func NewGetAdminUsersByRoleIDUnauthorized() *GetAdminUsersByRoleIDUnauthorized {
	return &GetAdminUsersByRoleIDUnauthorized{}
}

/*GetAdminUsersByRoleIDUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetAdminUsersByRoleIDUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetAdminUsersByRoleIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/admin][%d] getAdminUsersByRoleIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAdminUsersByRoleIDUnauthorized) ToJSONString() string {
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

func (o *GetAdminUsersByRoleIDUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetAdminUsersByRoleIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAdminUsersByRoleIDForbidden creates a GetAdminUsersByRoleIDForbidden with default headers values
func NewGetAdminUsersByRoleIDForbidden() *GetAdminUsersByRoleIDForbidden {
	return &GetAdminUsersByRoleIDForbidden{}
}

/*GetAdminUsersByRoleIDForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetAdminUsersByRoleIDForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetAdminUsersByRoleIDForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/admin][%d] getAdminUsersByRoleIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAdminUsersByRoleIDForbidden) ToJSONString() string {
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

func (o *GetAdminUsersByRoleIDForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetAdminUsersByRoleIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAdminUsersByRoleIDNotFound creates a GetAdminUsersByRoleIDNotFound with default headers values
func NewGetAdminUsersByRoleIDNotFound() *GetAdminUsersByRoleIDNotFound {
	return &GetAdminUsersByRoleIDNotFound{}
}

/*GetAdminUsersByRoleIDNotFound handles this case with default header values.

  Data not found
*/
type GetAdminUsersByRoleIDNotFound struct {
}

func (o *GetAdminUsersByRoleIDNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/admin][%d] getAdminUsersByRoleIdNotFound ", 404)
}

func (o *GetAdminUsersByRoleIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetAdminUsersByRoleIDInternalServerError creates a GetAdminUsersByRoleIDInternalServerError with default headers values
func NewGetAdminUsersByRoleIDInternalServerError() *GetAdminUsersByRoleIDInternalServerError {
	return &GetAdminUsersByRoleIDInternalServerError{}
}

/*GetAdminUsersByRoleIDInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetAdminUsersByRoleIDInternalServerError struct {
}

func (o *GetAdminUsersByRoleIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/admin][%d] getAdminUsersByRoleIdInternalServerError ", 500)
}

func (o *GetAdminUsersByRoleIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
