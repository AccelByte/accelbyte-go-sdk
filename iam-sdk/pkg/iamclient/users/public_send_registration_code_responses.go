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

// PublicSendRegistrationCodeReader is a Reader for the PublicSendRegistrationCode structure.
type PublicSendRegistrationCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSendRegistrationCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicSendRegistrationCodeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSendRegistrationCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicSendRegistrationCodeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicSendRegistrationCodeTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/code/request returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSendRegistrationCodeNoContent creates a PublicSendRegistrationCodeNoContent with default headers values
func NewPublicSendRegistrationCodeNoContent() *PublicSendRegistrationCodeNoContent {
	return &PublicSendRegistrationCodeNoContent{}
}

/*PublicSendRegistrationCodeNoContent handles this case with default header values.

  Operation succeeded
*/
type PublicSendRegistrationCodeNoContent struct {
}

func (o *PublicSendRegistrationCodeNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/code/request][%d] publicSendRegistrationCodeNoContent ", 204)
}

func (o *PublicSendRegistrationCodeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicSendRegistrationCodeBadRequest creates a PublicSendRegistrationCodeBadRequest with default headers values
func NewPublicSendRegistrationCodeBadRequest() *PublicSendRegistrationCodeBadRequest {
	return &PublicSendRegistrationCodeBadRequest{}
}

/*PublicSendRegistrationCodeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicSendRegistrationCodeBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendRegistrationCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/code/request][%d] publicSendRegistrationCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSendRegistrationCodeBadRequest) ToJSONString() string {
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

func (o *PublicSendRegistrationCodeBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendRegistrationCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSendRegistrationCodeConflict creates a PublicSendRegistrationCodeConflict with default headers values
func NewPublicSendRegistrationCodeConflict() *PublicSendRegistrationCodeConflict {
	return &PublicSendRegistrationCodeConflict{}
}

/*PublicSendRegistrationCodeConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr></table>
*/
type PublicSendRegistrationCodeConflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendRegistrationCodeConflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/code/request][%d] publicSendRegistrationCodeConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicSendRegistrationCodeConflict) ToJSONString() string {
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

func (o *PublicSendRegistrationCodeConflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendRegistrationCodeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSendRegistrationCodeTooManyRequests creates a PublicSendRegistrationCodeTooManyRequests with default headers values
func NewPublicSendRegistrationCodeTooManyRequests() *PublicSendRegistrationCodeTooManyRequests {
	return &PublicSendRegistrationCodeTooManyRequests{}
}

/*PublicSendRegistrationCodeTooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type PublicSendRegistrationCodeTooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendRegistrationCodeTooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/code/request][%d] publicSendRegistrationCodeTooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicSendRegistrationCodeTooManyRequests) ToJSONString() string {
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

func (o *PublicSendRegistrationCodeTooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendRegistrationCodeTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
