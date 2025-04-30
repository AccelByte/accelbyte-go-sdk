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

// PublicForgotPasswordWithoutNamespaceV3Reader is a Reader for the PublicForgotPasswordWithoutNamespaceV3 structure.
type PublicForgotPasswordWithoutNamespaceV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicForgotPasswordWithoutNamespaceV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicForgotPasswordWithoutNamespaceV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicForgotPasswordWithoutNamespaceV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicForgotPasswordWithoutNamespaceV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/users/forgot returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicForgotPasswordWithoutNamespaceV3OK creates a PublicForgotPasswordWithoutNamespaceV3OK with default headers values
func NewPublicForgotPasswordWithoutNamespaceV3OK() *PublicForgotPasswordWithoutNamespaceV3OK {
	return &PublicForgotPasswordWithoutNamespaceV3OK{}
}

/*PublicForgotPasswordWithoutNamespaceV3OK handles this case with default header values.

  OK
*/
type PublicForgotPasswordWithoutNamespaceV3OK struct {
	Payload *iamclientmodels.ModelForgotPasswordResponseV3
}

func (o *PublicForgotPasswordWithoutNamespaceV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/forgot][%d] publicForgotPasswordWithoutNamespaceV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicForgotPasswordWithoutNamespaceV3OK) ToJSONString() string {
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

func (o *PublicForgotPasswordWithoutNamespaceV3OK) GetPayload() *iamclientmodels.ModelForgotPasswordResponseV3 {
	return o.Payload
}

func (o *PublicForgotPasswordWithoutNamespaceV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelForgotPasswordResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicForgotPasswordWithoutNamespaceV3BadRequest creates a PublicForgotPasswordWithoutNamespaceV3BadRequest with default headers values
func NewPublicForgotPasswordWithoutNamespaceV3BadRequest() *PublicForgotPasswordWithoutNamespaceV3BadRequest {
	return &PublicForgotPasswordWithoutNamespaceV3BadRequest{}
}

/*PublicForgotPasswordWithoutNamespaceV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicForgotPasswordWithoutNamespaceV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForgotPasswordWithoutNamespaceV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/forgot][%d] publicForgotPasswordWithoutNamespaceV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicForgotPasswordWithoutNamespaceV3BadRequest) ToJSONString() string {
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

func (o *PublicForgotPasswordWithoutNamespaceV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForgotPasswordWithoutNamespaceV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicForgotPasswordWithoutNamespaceV3InternalServerError creates a PublicForgotPasswordWithoutNamespaceV3InternalServerError with default headers values
func NewPublicForgotPasswordWithoutNamespaceV3InternalServerError() *PublicForgotPasswordWithoutNamespaceV3InternalServerError {
	return &PublicForgotPasswordWithoutNamespaceV3InternalServerError{}
}

/*PublicForgotPasswordWithoutNamespaceV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicForgotPasswordWithoutNamespaceV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForgotPasswordWithoutNamespaceV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/forgot][%d] publicForgotPasswordWithoutNamespaceV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicForgotPasswordWithoutNamespaceV3InternalServerError) ToJSONString() string {
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

func (o *PublicForgotPasswordWithoutNamespaceV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForgotPasswordWithoutNamespaceV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
