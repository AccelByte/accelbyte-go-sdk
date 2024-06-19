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

// PublicGetMyMFAStatusV4Reader is a Reader for the PublicGetMyMFAStatusV4 structure.
type PublicGetMyMFAStatusV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMyMFAStatusV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMyMFAStatusV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetMyMFAStatusV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetMyMFAStatusV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetMyMFAStatusV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetMyMFAStatusV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMyMFAStatusV4OK creates a PublicGetMyMFAStatusV4OK with default headers values
func NewPublicGetMyMFAStatusV4OK() *PublicGetMyMFAStatusV4OK {
	return &PublicGetMyMFAStatusV4OK{}
}

/*PublicGetMyMFAStatusV4OK handles this case with default header values.

  MFA status returned
*/
type PublicGetMyMFAStatusV4OK struct {
	Payload *iamclientmodels.ModelUserMFAStatusResponseV4
}

func (o *PublicGetMyMFAStatusV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/status][%d] publicGetMyMfaStatusV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMyMFAStatusV4OK) ToJSONString() string {
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

func (o *PublicGetMyMFAStatusV4OK) GetPayload() *iamclientmodels.ModelUserMFAStatusResponseV4 {
	return o.Payload
}

func (o *PublicGetMyMFAStatusV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyMFAStatusV4Unauthorized creates a PublicGetMyMFAStatusV4Unauthorized with default headers values
func NewPublicGetMyMFAStatusV4Unauthorized() *PublicGetMyMFAStatusV4Unauthorized {
	return &PublicGetMyMFAStatusV4Unauthorized{}
}

/*PublicGetMyMFAStatusV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetMyMFAStatusV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyMFAStatusV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/status][%d] publicGetMyMfaStatusV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetMyMFAStatusV4Unauthorized) ToJSONString() string {
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

func (o *PublicGetMyMFAStatusV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyMFAStatusV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyMFAStatusV4Forbidden creates a PublicGetMyMFAStatusV4Forbidden with default headers values
func NewPublicGetMyMFAStatusV4Forbidden() *PublicGetMyMFAStatusV4Forbidden {
	return &PublicGetMyMFAStatusV4Forbidden{}
}

/*PublicGetMyMFAStatusV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type PublicGetMyMFAStatusV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyMFAStatusV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/status][%d] publicGetMyMfaStatusV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetMyMFAStatusV4Forbidden) ToJSONString() string {
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

func (o *PublicGetMyMFAStatusV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyMFAStatusV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyMFAStatusV4NotFound creates a PublicGetMyMFAStatusV4NotFound with default headers values
func NewPublicGetMyMFAStatusV4NotFound() *PublicGetMyMFAStatusV4NotFound {
	return &PublicGetMyMFAStatusV4NotFound{}
}

/*PublicGetMyMFAStatusV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10365</td><td>client not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicGetMyMFAStatusV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyMFAStatusV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/status][%d] publicGetMyMfaStatusV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetMyMFAStatusV4NotFound) ToJSONString() string {
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

func (o *PublicGetMyMFAStatusV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyMFAStatusV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyMFAStatusV4InternalServerError creates a PublicGetMyMFAStatusV4InternalServerError with default headers values
func NewPublicGetMyMFAStatusV4InternalServerError() *PublicGetMyMFAStatusV4InternalServerError {
	return &PublicGetMyMFAStatusV4InternalServerError{}
}

/*PublicGetMyMFAStatusV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetMyMFAStatusV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyMFAStatusV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/status][%d] publicGetMyMfaStatusV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetMyMFAStatusV4InternalServerError) ToJSONString() string {
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

func (o *PublicGetMyMFAStatusV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyMFAStatusV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
