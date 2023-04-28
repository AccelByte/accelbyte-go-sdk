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

// PublicGetUserPlatformAccountsV3Reader is a Reader for the PublicGetUserPlatformAccountsV3 structure.
type PublicGetUserPlatformAccountsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserPlatformAccountsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserPlatformAccountsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUserPlatformAccountsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserPlatformAccountsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserPlatformAccountsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserPlatformAccountsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserPlatformAccountsV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserPlatformAccountsV3OK creates a PublicGetUserPlatformAccountsV3OK with default headers values
func NewPublicGetUserPlatformAccountsV3OK() *PublicGetUserPlatformAccountsV3OK {
	return &PublicGetUserPlatformAccountsV3OK{}
}

/*PublicGetUserPlatformAccountsV3OK handles this case with default header values.

  OK
*/
type PublicGetUserPlatformAccountsV3OK struct {
	Payload *iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3
}

func (o *PublicGetUserPlatformAccountsV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms][%d] publicGetUserPlatformAccountsV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserPlatformAccountsV3OK) ToJSONString() string {
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

func (o *PublicGetUserPlatformAccountsV3OK) GetPayload() *iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3 {
	return o.Payload
}

func (o *PublicGetUserPlatformAccountsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserPlatformAccountsV3BadRequest creates a PublicGetUserPlatformAccountsV3BadRequest with default headers values
func NewPublicGetUserPlatformAccountsV3BadRequest() *PublicGetUserPlatformAccountsV3BadRequest {
	return &PublicGetUserPlatformAccountsV3BadRequest{}
}

/*PublicGetUserPlatformAccountsV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetUserPlatformAccountsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserPlatformAccountsV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms][%d] publicGetUserPlatformAccountsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUserPlatformAccountsV3BadRequest) ToJSONString() string {
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

func (o *PublicGetUserPlatformAccountsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserPlatformAccountsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserPlatformAccountsV3Unauthorized creates a PublicGetUserPlatformAccountsV3Unauthorized with default headers values
func NewPublicGetUserPlatformAccountsV3Unauthorized() *PublicGetUserPlatformAccountsV3Unauthorized {
	return &PublicGetUserPlatformAccountsV3Unauthorized{}
}

/*PublicGetUserPlatformAccountsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicGetUserPlatformAccountsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserPlatformAccountsV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms][%d] publicGetUserPlatformAccountsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserPlatformAccountsV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetUserPlatformAccountsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserPlatformAccountsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserPlatformAccountsV3Forbidden creates a PublicGetUserPlatformAccountsV3Forbidden with default headers values
func NewPublicGetUserPlatformAccountsV3Forbidden() *PublicGetUserPlatformAccountsV3Forbidden {
	return &PublicGetUserPlatformAccountsV3Forbidden{}
}

/*PublicGetUserPlatformAccountsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetUserPlatformAccountsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserPlatformAccountsV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms][%d] publicGetUserPlatformAccountsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserPlatformAccountsV3Forbidden) ToJSONString() string {
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

func (o *PublicGetUserPlatformAccountsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserPlatformAccountsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserPlatformAccountsV3NotFound creates a PublicGetUserPlatformAccountsV3NotFound with default headers values
func NewPublicGetUserPlatformAccountsV3NotFound() *PublicGetUserPlatformAccountsV3NotFound {
	return &PublicGetUserPlatformAccountsV3NotFound{}
}

/*PublicGetUserPlatformAccountsV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicGetUserPlatformAccountsV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserPlatformAccountsV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms][%d] publicGetUserPlatformAccountsV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserPlatformAccountsV3NotFound) ToJSONString() string {
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

func (o *PublicGetUserPlatformAccountsV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserPlatformAccountsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserPlatformAccountsV3InternalServerError creates a PublicGetUserPlatformAccountsV3InternalServerError with default headers values
func NewPublicGetUserPlatformAccountsV3InternalServerError() *PublicGetUserPlatformAccountsV3InternalServerError {
	return &PublicGetUserPlatformAccountsV3InternalServerError{}
}

/*PublicGetUserPlatformAccountsV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetUserPlatformAccountsV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserPlatformAccountsV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms][%d] publicGetUserPlatformAccountsV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserPlatformAccountsV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetUserPlatformAccountsV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserPlatformAccountsV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
