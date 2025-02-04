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

// PublicGetUserByPlatformUserIDV4Reader is a Reader for the PublicGetUserByPlatformUserIDV4 structure.
type PublicGetUserByPlatformUserIDV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserByPlatformUserIDV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserByPlatformUserIDV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserByPlatformUserIDV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserByPlatformUserIDV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserByPlatformUserIDV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserByPlatformUserIDV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserByPlatformUserIDV4OK creates a PublicGetUserByPlatformUserIDV4OK with default headers values
func NewPublicGetUserByPlatformUserIDV4OK() *PublicGetUserByPlatformUserIDV4OK {
	return &PublicGetUserByPlatformUserIDV4OK{}
}

/*PublicGetUserByPlatformUserIDV4OK handles this case with default header values.

  OK
*/
type PublicGetUserByPlatformUserIDV4OK struct {
	Payload *iamclientmodels.ModelUserResponseV3
}

func (o *PublicGetUserByPlatformUserIDV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}][%d] publicGetUserByPlatformUserIdV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserByPlatformUserIDV4OK) ToJSONString() string {
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

func (o *PublicGetUserByPlatformUserIDV4OK) GetPayload() *iamclientmodels.ModelUserResponseV3 {
	return o.Payload
}

func (o *PublicGetUserByPlatformUserIDV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserByPlatformUserIDV4Unauthorized creates a PublicGetUserByPlatformUserIDV4Unauthorized with default headers values
func NewPublicGetUserByPlatformUserIDV4Unauthorized() *PublicGetUserByPlatformUserIDV4Unauthorized {
	return &PublicGetUserByPlatformUserIDV4Unauthorized{}
}

/*PublicGetUserByPlatformUserIDV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetUserByPlatformUserIDV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByPlatformUserIDV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}][%d] publicGetUserByPlatformUserIdV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserByPlatformUserIDV4Unauthorized) ToJSONString() string {
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

func (o *PublicGetUserByPlatformUserIDV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByPlatformUserIDV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserByPlatformUserIDV4Forbidden creates a PublicGetUserByPlatformUserIDV4Forbidden with default headers values
func NewPublicGetUserByPlatformUserIDV4Forbidden() *PublicGetUserByPlatformUserIDV4Forbidden {
	return &PublicGetUserByPlatformUserIDV4Forbidden{}
}

/*PublicGetUserByPlatformUserIDV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type PublicGetUserByPlatformUserIDV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByPlatformUserIDV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}][%d] publicGetUserByPlatformUserIdV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserByPlatformUserIDV4Forbidden) ToJSONString() string {
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

func (o *PublicGetUserByPlatformUserIDV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByPlatformUserIDV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserByPlatformUserIDV4NotFound creates a PublicGetUserByPlatformUserIDV4NotFound with default headers values
func NewPublicGetUserByPlatformUserIDV4NotFound() *PublicGetUserByPlatformUserIDV4NotFound {
	return &PublicGetUserByPlatformUserIDV4NotFound{}
}

/*PublicGetUserByPlatformUserIDV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicGetUserByPlatformUserIDV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByPlatformUserIDV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}][%d] publicGetUserByPlatformUserIdV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserByPlatformUserIDV4NotFound) ToJSONString() string {
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

func (o *PublicGetUserByPlatformUserIDV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByPlatformUserIDV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserByPlatformUserIDV4InternalServerError creates a PublicGetUserByPlatformUserIDV4InternalServerError with default headers values
func NewPublicGetUserByPlatformUserIDV4InternalServerError() *PublicGetUserByPlatformUserIDV4InternalServerError {
	return &PublicGetUserByPlatformUserIDV4InternalServerError{}
}

/*PublicGetUserByPlatformUserIDV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetUserByPlatformUserIDV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByPlatformUserIDV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}][%d] publicGetUserByPlatformUserIdV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserByPlatformUserIDV4InternalServerError) ToJSONString() string {
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

func (o *PublicGetUserByPlatformUserIDV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByPlatformUserIDV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
