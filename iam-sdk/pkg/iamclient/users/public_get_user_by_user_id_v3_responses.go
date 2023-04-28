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

// PublicGetUserByUserIDV3Reader is a Reader for the PublicGetUserByUserIDV3 structure.
type PublicGetUserByUserIDV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserByUserIDV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserByUserIDV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUserByUserIDV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserByUserIDV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserByUserIDV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserByUserIDV3OK creates a PublicGetUserByUserIDV3OK with default headers values
func NewPublicGetUserByUserIDV3OK() *PublicGetUserByUserIDV3OK {
	return &PublicGetUserByUserIDV3OK{}
}

/*PublicGetUserByUserIDV3OK handles this case with default header values.

  OK
*/
type PublicGetUserByUserIDV3OK struct {
	Payload *iamclientmodels.ModelPublicUserResponseV3
}

func (o *PublicGetUserByUserIDV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserByUserIdV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserByUserIDV3OK) ToJSONString() string {
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

func (o *PublicGetUserByUserIDV3OK) GetPayload() *iamclientmodels.ModelPublicUserResponseV3 {
	return o.Payload
}

func (o *PublicGetUserByUserIDV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelPublicUserResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserByUserIDV3BadRequest creates a PublicGetUserByUserIDV3BadRequest with default headers values
func NewPublicGetUserByUserIDV3BadRequest() *PublicGetUserByUserIDV3BadRequest {
	return &PublicGetUserByUserIDV3BadRequest{}
}

/*PublicGetUserByUserIDV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetUserByUserIDV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByUserIDV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserByUserIdV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUserByUserIDV3BadRequest) ToJSONString() string {
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

func (o *PublicGetUserByUserIDV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByUserIDV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserByUserIDV3NotFound creates a PublicGetUserByUserIDV3NotFound with default headers values
func NewPublicGetUserByUserIDV3NotFound() *PublicGetUserByUserIDV3NotFound {
	return &PublicGetUserByUserIDV3NotFound{}
}

/*PublicGetUserByUserIDV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type PublicGetUserByUserIDV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByUserIDV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserByUserIdV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserByUserIDV3NotFound) ToJSONString() string {
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

func (o *PublicGetUserByUserIDV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByUserIDV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserByUserIDV3InternalServerError creates a PublicGetUserByUserIDV3InternalServerError with default headers values
func NewPublicGetUserByUserIDV3InternalServerError() *PublicGetUserByUserIDV3InternalServerError {
	return &PublicGetUserByUserIDV3InternalServerError{}
}

/*PublicGetUserByUserIDV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetUserByUserIDV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserByUserIDV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserByUserIdV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserByUserIDV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetUserByUserIDV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserByUserIDV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
