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

// PublicGetOpenidUserInfoV3Reader is a Reader for the PublicGetOpenidUserInfoV3 structure.
type PublicGetOpenidUserInfoV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetOpenidUserInfoV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetOpenidUserInfoV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetOpenidUserInfoV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetOpenidUserInfoV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/users/userinfo returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetOpenidUserInfoV3OK creates a PublicGetOpenidUserInfoV3OK with default headers values
func NewPublicGetOpenidUserInfoV3OK() *PublicGetOpenidUserInfoV3OK {
	return &PublicGetOpenidUserInfoV3OK{}
}

/*PublicGetOpenidUserInfoV3OK handles this case with default header values.

  OK
*/
type PublicGetOpenidUserInfoV3OK struct {
	Payload *iamclientmodels.ModelPublicOpenIDUserInfoResponse
}

func (o *PublicGetOpenidUserInfoV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/userinfo][%d] publicGetOpenidUserInfoV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetOpenidUserInfoV3OK) ToJSONString() string {
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

func (o *PublicGetOpenidUserInfoV3OK) GetPayload() *iamclientmodels.ModelPublicOpenIDUserInfoResponse {
	return o.Payload
}

func (o *PublicGetOpenidUserInfoV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelPublicOpenIDUserInfoResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetOpenidUserInfoV3Unauthorized creates a PublicGetOpenidUserInfoV3Unauthorized with default headers values
func NewPublicGetOpenidUserInfoV3Unauthorized() *PublicGetOpenidUserInfoV3Unauthorized {
	return &PublicGetOpenidUserInfoV3Unauthorized{}
}

/*PublicGetOpenidUserInfoV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicGetOpenidUserInfoV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetOpenidUserInfoV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/userinfo][%d] publicGetOpenidUserInfoV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetOpenidUserInfoV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetOpenidUserInfoV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetOpenidUserInfoV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetOpenidUserInfoV3InternalServerError creates a PublicGetOpenidUserInfoV3InternalServerError with default headers values
func NewPublicGetOpenidUserInfoV3InternalServerError() *PublicGetOpenidUserInfoV3InternalServerError {
	return &PublicGetOpenidUserInfoV3InternalServerError{}
}

/*PublicGetOpenidUserInfoV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetOpenidUserInfoV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetOpenidUserInfoV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/userinfo][%d] publicGetOpenidUserInfoV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetOpenidUserInfoV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetOpenidUserInfoV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetOpenidUserInfoV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
