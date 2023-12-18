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

// PublicGetUsersPlatformInfosV3Reader is a Reader for the PublicGetUsersPlatformInfosV3 structure.
type PublicGetUsersPlatformInfosV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUsersPlatformInfosV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUsersPlatformInfosV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUsersPlatformInfosV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUsersPlatformInfosV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUsersPlatformInfosV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/platforms returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUsersPlatformInfosV3OK creates a PublicGetUsersPlatformInfosV3OK with default headers values
func NewPublicGetUsersPlatformInfosV3OK() *PublicGetUsersPlatformInfosV3OK {
	return &PublicGetUsersPlatformInfosV3OK{}
}

/*PublicGetUsersPlatformInfosV3OK handles this case with default header values.

  OK
*/
type PublicGetUsersPlatformInfosV3OK struct {
	Payload *iamclientmodels.ModelUsersPlatformInfosResponse
}

func (o *PublicGetUsersPlatformInfosV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/platforms][%d] publicGetUsersPlatformInfosV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUsersPlatformInfosV3OK) ToJSONString() string {
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

func (o *PublicGetUsersPlatformInfosV3OK) GetPayload() *iamclientmodels.ModelUsersPlatformInfosResponse {
	return o.Payload
}

func (o *PublicGetUsersPlatformInfosV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUsersPlatformInfosResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUsersPlatformInfosV3BadRequest creates a PublicGetUsersPlatformInfosV3BadRequest with default headers values
func NewPublicGetUsersPlatformInfosV3BadRequest() *PublicGetUsersPlatformInfosV3BadRequest {
	return &PublicGetUsersPlatformInfosV3BadRequest{}
}

/*PublicGetUsersPlatformInfosV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetUsersPlatformInfosV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUsersPlatformInfosV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/platforms][%d] publicGetUsersPlatformInfosV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUsersPlatformInfosV3BadRequest) ToJSONString() string {
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

func (o *PublicGetUsersPlatformInfosV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUsersPlatformInfosV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUsersPlatformInfosV3Unauthorized creates a PublicGetUsersPlatformInfosV3Unauthorized with default headers values
func NewPublicGetUsersPlatformInfosV3Unauthorized() *PublicGetUsersPlatformInfosV3Unauthorized {
	return &PublicGetUsersPlatformInfosV3Unauthorized{}
}

/*PublicGetUsersPlatformInfosV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicGetUsersPlatformInfosV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUsersPlatformInfosV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/platforms][%d] publicGetUsersPlatformInfosV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUsersPlatformInfosV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetUsersPlatformInfosV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUsersPlatformInfosV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUsersPlatformInfosV3InternalServerError creates a PublicGetUsersPlatformInfosV3InternalServerError with default headers values
func NewPublicGetUsersPlatformInfosV3InternalServerError() *PublicGetUsersPlatformInfosV3InternalServerError {
	return &PublicGetUsersPlatformInfosV3InternalServerError{}
}

/*PublicGetUsersPlatformInfosV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetUsersPlatformInfosV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUsersPlatformInfosV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/platforms][%d] publicGetUsersPlatformInfosV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUsersPlatformInfosV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetUsersPlatformInfosV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUsersPlatformInfosV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
