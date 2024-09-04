// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// PublicGetMyOwnMFAStatusV4Reader is a Reader for the PublicGetMyOwnMFAStatusV4 structure.
type PublicGetMyOwnMFAStatusV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMyOwnMFAStatusV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMyOwnMFAStatusV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetMyOwnMFAStatusV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetMyOwnMFAStatusV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetMyOwnMFAStatusV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetMyOwnMFAStatusV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMyOwnMFAStatusV4OK creates a PublicGetMyOwnMFAStatusV4OK with default headers values
func NewPublicGetMyOwnMFAStatusV4OK() *PublicGetMyOwnMFAStatusV4OK {
	return &PublicGetMyOwnMFAStatusV4OK{}
}

/*PublicGetMyOwnMFAStatusV4OK handles this case with default header values.

  MFA status returned
*/
type PublicGetMyOwnMFAStatusV4OK struct {
	Payload *iamclientmodels.ModelUserMFAStatusResponseV4
}

func (o *PublicGetMyOwnMFAStatusV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/status][%d] publicGetMyOwnMfaStatusV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMyOwnMFAStatusV4OK) ToJSONString() string {
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

func (o *PublicGetMyOwnMFAStatusV4OK) GetPayload() *iamclientmodels.ModelUserMFAStatusResponseV4 {
	return o.Payload
}

func (o *PublicGetMyOwnMFAStatusV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserMFAStatusResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMyOwnMFAStatusV4Unauthorized creates a PublicGetMyOwnMFAStatusV4Unauthorized with default headers values
func NewPublicGetMyOwnMFAStatusV4Unauthorized() *PublicGetMyOwnMFAStatusV4Unauthorized {
	return &PublicGetMyOwnMFAStatusV4Unauthorized{}
}

/*PublicGetMyOwnMFAStatusV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetMyOwnMFAStatusV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyOwnMFAStatusV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/status][%d] publicGetMyOwnMfaStatusV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetMyOwnMFAStatusV4Unauthorized) ToJSONString() string {
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

func (o *PublicGetMyOwnMFAStatusV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyOwnMFAStatusV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyOwnMFAStatusV4Forbidden creates a PublicGetMyOwnMFAStatusV4Forbidden with default headers values
func NewPublicGetMyOwnMFAStatusV4Forbidden() *PublicGetMyOwnMFAStatusV4Forbidden {
	return &PublicGetMyOwnMFAStatusV4Forbidden{}
}

/*PublicGetMyOwnMFAStatusV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type PublicGetMyOwnMFAStatusV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyOwnMFAStatusV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/status][%d] publicGetMyOwnMfaStatusV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetMyOwnMFAStatusV4Forbidden) ToJSONString() string {
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

func (o *PublicGetMyOwnMFAStatusV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyOwnMFAStatusV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyOwnMFAStatusV4NotFound creates a PublicGetMyOwnMFAStatusV4NotFound with default headers values
func NewPublicGetMyOwnMFAStatusV4NotFound() *PublicGetMyOwnMFAStatusV4NotFound {
	return &PublicGetMyOwnMFAStatusV4NotFound{}
}

/*PublicGetMyOwnMFAStatusV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10365</td><td>client not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicGetMyOwnMFAStatusV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyOwnMFAStatusV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/status][%d] publicGetMyOwnMfaStatusV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetMyOwnMFAStatusV4NotFound) ToJSONString() string {
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

func (o *PublicGetMyOwnMFAStatusV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyOwnMFAStatusV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyOwnMFAStatusV4InternalServerError creates a PublicGetMyOwnMFAStatusV4InternalServerError with default headers values
func NewPublicGetMyOwnMFAStatusV4InternalServerError() *PublicGetMyOwnMFAStatusV4InternalServerError {
	return &PublicGetMyOwnMFAStatusV4InternalServerError{}
}

/*PublicGetMyOwnMFAStatusV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetMyOwnMFAStatusV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyOwnMFAStatusV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/status][%d] publicGetMyOwnMfaStatusV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetMyOwnMFAStatusV4InternalServerError) ToJSONString() string {
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

func (o *PublicGetMyOwnMFAStatusV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyOwnMFAStatusV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
