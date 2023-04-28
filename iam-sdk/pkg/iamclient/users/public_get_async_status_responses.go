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

// PublicGetAsyncStatusReader is a Reader for the PublicGetAsyncStatus structure.
type PublicGetAsyncStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetAsyncStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetAsyncStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetAsyncStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetAsyncStatusForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetAsyncStatusInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetAsyncStatusOK creates a PublicGetAsyncStatusOK with default headers values
func NewPublicGetAsyncStatusOK() *PublicGetAsyncStatusOK {
	return &PublicGetAsyncStatusOK{}
}

/*PublicGetAsyncStatusOK handles this case with default header values.

  OK
*/
type PublicGetAsyncStatusOK struct {
	Payload *iamclientmodels.ModelLinkRequest
}

func (o *PublicGetAsyncStatusOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status][%d] publicGetAsyncStatusOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetAsyncStatusOK) ToJSONString() string {
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

func (o *PublicGetAsyncStatusOK) GetPayload() *iamclientmodels.ModelLinkRequest {
	return o.Payload
}

func (o *PublicGetAsyncStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelLinkRequest)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetAsyncStatusUnauthorized creates a PublicGetAsyncStatusUnauthorized with default headers values
func NewPublicGetAsyncStatusUnauthorized() *PublicGetAsyncStatusUnauthorized {
	return &PublicGetAsyncStatusUnauthorized{}
}

/*PublicGetAsyncStatusUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicGetAsyncStatusUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetAsyncStatusUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status][%d] publicGetAsyncStatusUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetAsyncStatusUnauthorized) ToJSONString() string {
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

func (o *PublicGetAsyncStatusUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetAsyncStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetAsyncStatusForbidden creates a PublicGetAsyncStatusForbidden with default headers values
func NewPublicGetAsyncStatusForbidden() *PublicGetAsyncStatusForbidden {
	return &PublicGetAsyncStatusForbidden{}
}

/*PublicGetAsyncStatusForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetAsyncStatusForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetAsyncStatusForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status][%d] publicGetAsyncStatusForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetAsyncStatusForbidden) ToJSONString() string {
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

func (o *PublicGetAsyncStatusForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetAsyncStatusForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetAsyncStatusInternalServerError creates a PublicGetAsyncStatusInternalServerError with default headers values
func NewPublicGetAsyncStatusInternalServerError() *PublicGetAsyncStatusInternalServerError {
	return &PublicGetAsyncStatusInternalServerError{}
}

/*PublicGetAsyncStatusInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetAsyncStatusInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetAsyncStatusInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status][%d] publicGetAsyncStatusInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetAsyncStatusInternalServerError) ToJSONString() string {
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

func (o *PublicGetAsyncStatusInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetAsyncStatusInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
