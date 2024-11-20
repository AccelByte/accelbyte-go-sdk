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

// AdminSyncPlatformCredentialsReader is a Reader for the AdminSyncPlatformCredentials structure.
type AdminSyncPlatformCredentialsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSyncPlatformCredentialsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSyncPlatformCredentialsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSyncPlatformCredentialsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSyncPlatformCredentialsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSyncPlatformCredentialsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSyncPlatformCredentialsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSyncPlatformCredentialsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSyncPlatformCredentialsOK creates a AdminSyncPlatformCredentialsOK with default headers values
func NewAdminSyncPlatformCredentialsOK() *AdminSyncPlatformCredentialsOK {
	return &AdminSyncPlatformCredentialsOK{}
}

/*AdminSyncPlatformCredentialsOK handles this case with default header values.

  OK
*/
type AdminSyncPlatformCredentialsOK struct {
	Payload *sessionclientmodels.ApimodelsXblCertificateResponseBody
}

func (o *AdminSyncPlatformCredentialsOK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/sync][%d] adminSyncPlatformCredentialsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSyncPlatformCredentialsOK) ToJSONString() string {
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

func (o *AdminSyncPlatformCredentialsOK) GetPayload() *sessionclientmodels.ApimodelsXblCertificateResponseBody {
	return o.Payload
}

func (o *AdminSyncPlatformCredentialsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsXblCertificateResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSyncPlatformCredentialsBadRequest creates a AdminSyncPlatformCredentialsBadRequest with default headers values
func NewAdminSyncPlatformCredentialsBadRequest() *AdminSyncPlatformCredentialsBadRequest {
	return &AdminSyncPlatformCredentialsBadRequest{}
}

/*AdminSyncPlatformCredentialsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminSyncPlatformCredentialsBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncPlatformCredentialsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/sync][%d] adminSyncPlatformCredentialsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSyncPlatformCredentialsBadRequest) ToJSONString() string {
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

func (o *AdminSyncPlatformCredentialsBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncPlatformCredentialsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncPlatformCredentialsUnauthorized creates a AdminSyncPlatformCredentialsUnauthorized with default headers values
func NewAdminSyncPlatformCredentialsUnauthorized() *AdminSyncPlatformCredentialsUnauthorized {
	return &AdminSyncPlatformCredentialsUnauthorized{}
}

/*AdminSyncPlatformCredentialsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSyncPlatformCredentialsUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncPlatformCredentialsUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/sync][%d] adminSyncPlatformCredentialsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSyncPlatformCredentialsUnauthorized) ToJSONString() string {
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

func (o *AdminSyncPlatformCredentialsUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncPlatformCredentialsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncPlatformCredentialsForbidden creates a AdminSyncPlatformCredentialsForbidden with default headers values
func NewAdminSyncPlatformCredentialsForbidden() *AdminSyncPlatformCredentialsForbidden {
	return &AdminSyncPlatformCredentialsForbidden{}
}

/*AdminSyncPlatformCredentialsForbidden handles this case with default header values.

  Forbidden
*/
type AdminSyncPlatformCredentialsForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncPlatformCredentialsForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/sync][%d] adminSyncPlatformCredentialsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSyncPlatformCredentialsForbidden) ToJSONString() string {
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

func (o *AdminSyncPlatformCredentialsForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncPlatformCredentialsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncPlatformCredentialsNotFound creates a AdminSyncPlatformCredentialsNotFound with default headers values
func NewAdminSyncPlatformCredentialsNotFound() *AdminSyncPlatformCredentialsNotFound {
	return &AdminSyncPlatformCredentialsNotFound{}
}

/*AdminSyncPlatformCredentialsNotFound handles this case with default header values.

  Not Found
*/
type AdminSyncPlatformCredentialsNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncPlatformCredentialsNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/sync][%d] adminSyncPlatformCredentialsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSyncPlatformCredentialsNotFound) ToJSONString() string {
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

func (o *AdminSyncPlatformCredentialsNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncPlatformCredentialsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncPlatformCredentialsInternalServerError creates a AdminSyncPlatformCredentialsInternalServerError with default headers values
func NewAdminSyncPlatformCredentialsInternalServerError() *AdminSyncPlatformCredentialsInternalServerError {
	return &AdminSyncPlatformCredentialsInternalServerError{}
}

/*AdminSyncPlatformCredentialsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSyncPlatformCredentialsInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncPlatformCredentialsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/sync][%d] adminSyncPlatformCredentialsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSyncPlatformCredentialsInternalServerError) ToJSONString() string {
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

func (o *AdminSyncPlatformCredentialsInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncPlatformCredentialsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
