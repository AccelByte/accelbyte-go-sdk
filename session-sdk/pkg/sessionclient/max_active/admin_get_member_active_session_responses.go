// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package max_active

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminGetMemberActiveSessionReader is a Reader for the AdminGetMemberActiveSession structure.
type AdminGetMemberActiveSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetMemberActiveSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetMemberActiveSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetMemberActiveSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetMemberActiveSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetMemberActiveSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/configurations/{name}/memberactivesession/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetMemberActiveSessionOK creates a AdminGetMemberActiveSessionOK with default headers values
func NewAdminGetMemberActiveSessionOK() *AdminGetMemberActiveSessionOK {
	return &AdminGetMemberActiveSessionOK{}
}

/*AdminGetMemberActiveSessionOK handles this case with default header values.

  OK
*/
type AdminGetMemberActiveSessionOK struct {
	Payload *sessionclientmodels.ModelsMemberActiveSession
}

func (o *AdminGetMemberActiveSessionOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations/{name}/memberactivesession/{userId}][%d] adminGetMemberActiveSessionOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetMemberActiveSessionOK) ToJSONString() string {
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

func (o *AdminGetMemberActiveSessionOK) GetPayload() *sessionclientmodels.ModelsMemberActiveSession {
	return o.Payload
}

func (o *AdminGetMemberActiveSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ModelsMemberActiveSession)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetMemberActiveSessionBadRequest creates a AdminGetMemberActiveSessionBadRequest with default headers values
func NewAdminGetMemberActiveSessionBadRequest() *AdminGetMemberActiveSessionBadRequest {
	return &AdminGetMemberActiveSessionBadRequest{}
}

/*AdminGetMemberActiveSessionBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetMemberActiveSessionBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetMemberActiveSessionBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations/{name}/memberactivesession/{userId}][%d] adminGetMemberActiveSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetMemberActiveSessionBadRequest) ToJSONString() string {
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

func (o *AdminGetMemberActiveSessionBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMemberActiveSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetMemberActiveSessionUnauthorized creates a AdminGetMemberActiveSessionUnauthorized with default headers values
func NewAdminGetMemberActiveSessionUnauthorized() *AdminGetMemberActiveSessionUnauthorized {
	return &AdminGetMemberActiveSessionUnauthorized{}
}

/*AdminGetMemberActiveSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetMemberActiveSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetMemberActiveSessionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations/{name}/memberactivesession/{userId}][%d] adminGetMemberActiveSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetMemberActiveSessionUnauthorized) ToJSONString() string {
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

func (o *AdminGetMemberActiveSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMemberActiveSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetMemberActiveSessionInternalServerError creates a AdminGetMemberActiveSessionInternalServerError with default headers values
func NewAdminGetMemberActiveSessionInternalServerError() *AdminGetMemberActiveSessionInternalServerError {
	return &AdminGetMemberActiveSessionInternalServerError{}
}

/*AdminGetMemberActiveSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetMemberActiveSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetMemberActiveSessionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations/{name}/memberactivesession/{userId}][%d] adminGetMemberActiveSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetMemberActiveSessionInternalServerError) ToJSONString() string {
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

func (o *AdminGetMemberActiveSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMemberActiveSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
