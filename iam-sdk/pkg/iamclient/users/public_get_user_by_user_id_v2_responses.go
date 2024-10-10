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

// PublicGetUserByUserIDV2Reader is a Reader for the PublicGetUserByUserIDV2 structure.
type PublicGetUserByUserIDV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserByUserIDV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserByUserIDV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserByUserIDV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserByUserIDV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v2/public/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserByUserIDV2OK creates a PublicGetUserByUserIDV2OK with default headers values
func NewPublicGetUserByUserIDV2OK() *PublicGetUserByUserIDV2OK {
	return &PublicGetUserByUserIDV2OK{}
}

/*PublicGetUserByUserIDV2OK handles this case with default header values.

  OK
*/
type PublicGetUserByUserIDV2OK struct {
	Payload *iamclientmodels.ModelUserResponse
}

func (o *PublicGetUserByUserIDV2OK) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserByUserIdV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserByUserIDV2OK) ToJSONString() string {
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

func (o *PublicGetUserByUserIDV2OK) GetPayload() *iamclientmodels.ModelUserResponse {
	return o.Payload
}

func (o *PublicGetUserByUserIDV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserByUserIDV2NotFound creates a PublicGetUserByUserIDV2NotFound with default headers values
func NewPublicGetUserByUserIDV2NotFound() *PublicGetUserByUserIDV2NotFound {
	return &PublicGetUserByUserIDV2NotFound{}
}

/*PublicGetUserByUserIDV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type PublicGetUserByUserIDV2NotFound struct {
}

func (o *PublicGetUserByUserIDV2NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserByUserIdV2NotFound ", 404)
}

func (o *PublicGetUserByUserIDV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicGetUserByUserIDV2InternalServerError creates a PublicGetUserByUserIDV2InternalServerError with default headers values
func NewPublicGetUserByUserIDV2InternalServerError() *PublicGetUserByUserIDV2InternalServerError {
	return &PublicGetUserByUserIDV2InternalServerError{}
}

/*PublicGetUserByUserIDV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetUserByUserIDV2InternalServerError struct {
}

func (o *PublicGetUserByUserIDV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserByUserIdV2InternalServerError ", 500)
}

func (o *PublicGetUserByUserIDV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
