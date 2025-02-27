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

// PublicGetUserByPlatformUserIDV3Reader is a Reader for the PublicGetUserByPlatformUserIDV3 structure.
type PublicGetUserByPlatformUserIDV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserByPlatformUserIDV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserByPlatformUserIDV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserByPlatformUserIDV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserByPlatformUserIDV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserByPlatformUserIDV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserByPlatformUserIDV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserByPlatformUserIDV3OK creates a PublicGetUserByPlatformUserIDV3OK with default headers values
func NewPublicGetUserByPlatformUserIDV3OK() *PublicGetUserByPlatformUserIDV3OK {
	return &PublicGetUserByPlatformUserIDV3OK{}
}

/*PublicGetUserByPlatformUserIDV3OK handles this case with default header values.

  OK
*/
type PublicGetUserByPlatformUserIDV3OK struct {
	Payload *iamclientmodels.ModelUserResponseV3
}

func (o *PublicGetUserByPlatformUserIDV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}][%d] publicGetUserByPlatformUserIdV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserByPlatformUserIDV3OK) ToJSONString() string {
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

func (o *PublicGetUserByPlatformUserIDV3OK) GetPayload() *iamclientmodels.ModelUserResponseV3 {
	return o.Payload
}

func (o *PublicGetUserByPlatformUserIDV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserByPlatformUserIDV3Unauthorized creates a PublicGetUserByPlatformUserIDV3Unauthorized with default headers values
func NewPublicGetUserByPlatformUserIDV3Unauthorized() *PublicGetUserByPlatformUserIDV3Unauthorized {
	return &PublicGetUserByPlatformUserIDV3Unauthorized{}
}

/*PublicGetUserByPlatformUserIDV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetUserByPlatformUserIDV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByPlatformUserIDV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}][%d] publicGetUserByPlatformUserIdV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserByPlatformUserIDV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetUserByPlatformUserIDV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByPlatformUserIDV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserByPlatformUserIDV3Forbidden creates a PublicGetUserByPlatformUserIDV3Forbidden with default headers values
func NewPublicGetUserByPlatformUserIDV3Forbidden() *PublicGetUserByPlatformUserIDV3Forbidden {
	return &PublicGetUserByPlatformUserIDV3Forbidden{}
}

/*PublicGetUserByPlatformUserIDV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetUserByPlatformUserIDV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByPlatformUserIDV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}][%d] publicGetUserByPlatformUserIdV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserByPlatformUserIDV3Forbidden) ToJSONString() string {
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

func (o *PublicGetUserByPlatformUserIDV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByPlatformUserIDV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserByPlatformUserIDV3NotFound creates a PublicGetUserByPlatformUserIDV3NotFound with default headers values
func NewPublicGetUserByPlatformUserIDV3NotFound() *PublicGetUserByPlatformUserIDV3NotFound {
	return &PublicGetUserByPlatformUserIDV3NotFound{}
}

/*PublicGetUserByPlatformUserIDV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type PublicGetUserByPlatformUserIDV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByPlatformUserIDV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}][%d] publicGetUserByPlatformUserIdV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserByPlatformUserIDV3NotFound) ToJSONString() string {
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

func (o *PublicGetUserByPlatformUserIDV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByPlatformUserIDV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserByPlatformUserIDV3InternalServerError creates a PublicGetUserByPlatformUserIDV3InternalServerError with default headers values
func NewPublicGetUserByPlatformUserIDV3InternalServerError() *PublicGetUserByPlatformUserIDV3InternalServerError {
	return &PublicGetUserByPlatformUserIDV3InternalServerError{}
}

/*PublicGetUserByPlatformUserIDV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetUserByPlatformUserIDV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByPlatformUserIDV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}][%d] publicGetUserByPlatformUserIdV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserByPlatformUserIDV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetUserByPlatformUserIDV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByPlatformUserIDV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
