// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_credential

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

// AdminUploadPlatformCredentialsReader is a Reader for the AdminUploadPlatformCredentials structure.
type AdminUploadPlatformCredentialsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUploadPlatformCredentialsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUploadPlatformCredentialsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUploadPlatformCredentialsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUploadPlatformCredentialsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUploadPlatformCredentialsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUploadPlatformCredentialsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/upload returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUploadPlatformCredentialsOK creates a AdminUploadPlatformCredentialsOK with default headers values
func NewAdminUploadPlatformCredentialsOK() *AdminUploadPlatformCredentialsOK {
	return &AdminUploadPlatformCredentialsOK{}
}

/*AdminUploadPlatformCredentialsOK handles this case with default header values.

  OK
*/
type AdminUploadPlatformCredentialsOK struct {
}

func (o *AdminUploadPlatformCredentialsOK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/upload][%d] adminUploadPlatformCredentialsOK ", 200)
}

func (o *AdminUploadPlatformCredentialsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUploadPlatformCredentialsBadRequest creates a AdminUploadPlatformCredentialsBadRequest with default headers values
func NewAdminUploadPlatformCredentialsBadRequest() *AdminUploadPlatformCredentialsBadRequest {
	return &AdminUploadPlatformCredentialsBadRequest{}
}

/*AdminUploadPlatformCredentialsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUploadPlatformCredentialsBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUploadPlatformCredentialsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/upload][%d] adminUploadPlatformCredentialsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUploadPlatformCredentialsBadRequest) ToJSONString() string {
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

func (o *AdminUploadPlatformCredentialsBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadPlatformCredentialsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadPlatformCredentialsUnauthorized creates a AdminUploadPlatformCredentialsUnauthorized with default headers values
func NewAdminUploadPlatformCredentialsUnauthorized() *AdminUploadPlatformCredentialsUnauthorized {
	return &AdminUploadPlatformCredentialsUnauthorized{}
}

/*AdminUploadPlatformCredentialsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUploadPlatformCredentialsUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUploadPlatformCredentialsUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/upload][%d] adminUploadPlatformCredentialsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUploadPlatformCredentialsUnauthorized) ToJSONString() string {
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

func (o *AdminUploadPlatformCredentialsUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadPlatformCredentialsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadPlatformCredentialsForbidden creates a AdminUploadPlatformCredentialsForbidden with default headers values
func NewAdminUploadPlatformCredentialsForbidden() *AdminUploadPlatformCredentialsForbidden {
	return &AdminUploadPlatformCredentialsForbidden{}
}

/*AdminUploadPlatformCredentialsForbidden handles this case with default header values.

  Forbidden
*/
type AdminUploadPlatformCredentialsForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUploadPlatformCredentialsForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/upload][%d] adminUploadPlatformCredentialsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUploadPlatformCredentialsForbidden) ToJSONString() string {
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

func (o *AdminUploadPlatformCredentialsForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadPlatformCredentialsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadPlatformCredentialsInternalServerError creates a AdminUploadPlatformCredentialsInternalServerError with default headers values
func NewAdminUploadPlatformCredentialsInternalServerError() *AdminUploadPlatformCredentialsInternalServerError {
	return &AdminUploadPlatformCredentialsInternalServerError{}
}

/*AdminUploadPlatformCredentialsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUploadPlatformCredentialsInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUploadPlatformCredentialsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/upload][%d] adminUploadPlatformCredentialsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUploadPlatformCredentialsInternalServerError) ToJSONString() string {
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

func (o *AdminUploadPlatformCredentialsInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadPlatformCredentialsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
