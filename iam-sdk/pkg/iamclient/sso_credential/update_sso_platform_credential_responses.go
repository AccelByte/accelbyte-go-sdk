// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso_credential

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

// UpdateSSOPlatformCredentialReader is a Reader for the UpdateSSOPlatformCredential structure.
type UpdateSSOPlatformCredentialReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateSSOPlatformCredentialReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateSSOPlatformCredentialOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateSSOPlatformCredentialBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateSSOPlatformCredentialUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateSSOPlatformCredentialForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateSSOPlatformCredentialNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateSSOPlatformCredentialInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateSSOPlatformCredentialOK creates a UpdateSSOPlatformCredentialOK with default headers values
func NewUpdateSSOPlatformCredentialOK() *UpdateSSOPlatformCredentialOK {
	return &UpdateSSOPlatformCredentialOK{}
}

/*UpdateSSOPlatformCredentialOK handles this case with default header values.

  OK
*/
type UpdateSSOPlatformCredentialOK struct {
	Payload *iamclientmodels.ModelSSOPlatformCredentialResponse
}

func (o *UpdateSSOPlatformCredentialOK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] updateSsoPlatformCredentialOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateSSOPlatformCredentialOK) ToJSONString() string {
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

func (o *UpdateSSOPlatformCredentialOK) GetPayload() *iamclientmodels.ModelSSOPlatformCredentialResponse {
	return o.Payload
}

func (o *UpdateSSOPlatformCredentialOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelSSOPlatformCredentialResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSSOPlatformCredentialBadRequest creates a UpdateSSOPlatformCredentialBadRequest with default headers values
func NewUpdateSSOPlatformCredentialBadRequest() *UpdateSSOPlatformCredentialBadRequest {
	return &UpdateSSOPlatformCredentialBadRequest{}
}

/*UpdateSSOPlatformCredentialBadRequest handles this case with default header values.

  Invalid request
*/
type UpdateSSOPlatformCredentialBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateSSOPlatformCredentialBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] updateSsoPlatformCredentialBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateSSOPlatformCredentialBadRequest) ToJSONString() string {
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

func (o *UpdateSSOPlatformCredentialBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateSSOPlatformCredentialBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSSOPlatformCredentialUnauthorized creates a UpdateSSOPlatformCredentialUnauthorized with default headers values
func NewUpdateSSOPlatformCredentialUnauthorized() *UpdateSSOPlatformCredentialUnauthorized {
	return &UpdateSSOPlatformCredentialUnauthorized{}
}

/*UpdateSSOPlatformCredentialUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateSSOPlatformCredentialUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateSSOPlatformCredentialUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] updateSsoPlatformCredentialUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateSSOPlatformCredentialUnauthorized) ToJSONString() string {
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

func (o *UpdateSSOPlatformCredentialUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateSSOPlatformCredentialUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSSOPlatformCredentialForbidden creates a UpdateSSOPlatformCredentialForbidden with default headers values
func NewUpdateSSOPlatformCredentialForbidden() *UpdateSSOPlatformCredentialForbidden {
	return &UpdateSSOPlatformCredentialForbidden{}
}

/*UpdateSSOPlatformCredentialForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateSSOPlatformCredentialForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateSSOPlatformCredentialForbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] updateSsoPlatformCredentialForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateSSOPlatformCredentialForbidden) ToJSONString() string {
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

func (o *UpdateSSOPlatformCredentialForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateSSOPlatformCredentialForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSSOPlatformCredentialNotFound creates a UpdateSSOPlatformCredentialNotFound with default headers values
func NewUpdateSSOPlatformCredentialNotFound() *UpdateSSOPlatformCredentialNotFound {
	return &UpdateSSOPlatformCredentialNotFound{}
}

/*UpdateSSOPlatformCredentialNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type UpdateSSOPlatformCredentialNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateSSOPlatformCredentialNotFound) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] updateSsoPlatformCredentialNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateSSOPlatformCredentialNotFound) ToJSONString() string {
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

func (o *UpdateSSOPlatformCredentialNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateSSOPlatformCredentialNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSSOPlatformCredentialInternalServerError creates a UpdateSSOPlatformCredentialInternalServerError with default headers values
func NewUpdateSSOPlatformCredentialInternalServerError() *UpdateSSOPlatformCredentialInternalServerError {
	return &UpdateSSOPlatformCredentialInternalServerError{}
}

/*UpdateSSOPlatformCredentialInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type UpdateSSOPlatformCredentialInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateSSOPlatformCredentialInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] updateSsoPlatformCredentialInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateSSOPlatformCredentialInternalServerError) ToJSONString() string {
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

func (o *UpdateSSOPlatformCredentialInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateSSOPlatformCredentialInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
