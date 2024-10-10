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

// PublicGetMyProfileAllowUpdateStatusV3Reader is a Reader for the PublicGetMyProfileAllowUpdateStatusV3 structure.
type PublicGetMyProfileAllowUpdateStatusV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMyProfileAllowUpdateStatusV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMyProfileAllowUpdateStatusV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetMyProfileAllowUpdateStatusV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetMyProfileAllowUpdateStatusV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetMyProfileAllowUpdateStatusV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetMyProfileAllowUpdateStatusV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/users/me/profileStatus returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMyProfileAllowUpdateStatusV3OK creates a PublicGetMyProfileAllowUpdateStatusV3OK with default headers values
func NewPublicGetMyProfileAllowUpdateStatusV3OK() *PublicGetMyProfileAllowUpdateStatusV3OK {
	return &PublicGetMyProfileAllowUpdateStatusV3OK{}
}

/*PublicGetMyProfileAllowUpdateStatusV3OK handles this case with default header values.

  Operation succeeded
*/
type PublicGetMyProfileAllowUpdateStatusV3OK struct {
	Payload *iamclientmodels.ModelUserProfileUpdateAllowStatus
}

func (o *PublicGetMyProfileAllowUpdateStatusV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/profileStatus][%d] publicGetMyProfileAllowUpdateStatusV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMyProfileAllowUpdateStatusV3OK) ToJSONString() string {
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

func (o *PublicGetMyProfileAllowUpdateStatusV3OK) GetPayload() *iamclientmodels.ModelUserProfileUpdateAllowStatus {
	return o.Payload
}

func (o *PublicGetMyProfileAllowUpdateStatusV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserProfileUpdateAllowStatus)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMyProfileAllowUpdateStatusV3BadRequest creates a PublicGetMyProfileAllowUpdateStatusV3BadRequest with default headers values
func NewPublicGetMyProfileAllowUpdateStatusV3BadRequest() *PublicGetMyProfileAllowUpdateStatusV3BadRequest {
	return &PublicGetMyProfileAllowUpdateStatusV3BadRequest{}
}

/*PublicGetMyProfileAllowUpdateStatusV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetMyProfileAllowUpdateStatusV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyProfileAllowUpdateStatusV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/profileStatus][%d] publicGetMyProfileAllowUpdateStatusV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetMyProfileAllowUpdateStatusV3BadRequest) ToJSONString() string {
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

func (o *PublicGetMyProfileAllowUpdateStatusV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyProfileAllowUpdateStatusV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetMyProfileAllowUpdateStatusV3Unauthorized creates a PublicGetMyProfileAllowUpdateStatusV3Unauthorized with default headers values
func NewPublicGetMyProfileAllowUpdateStatusV3Unauthorized() *PublicGetMyProfileAllowUpdateStatusV3Unauthorized {
	return &PublicGetMyProfileAllowUpdateStatusV3Unauthorized{}
}

/*PublicGetMyProfileAllowUpdateStatusV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetMyProfileAllowUpdateStatusV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyProfileAllowUpdateStatusV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/profileStatus][%d] publicGetMyProfileAllowUpdateStatusV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetMyProfileAllowUpdateStatusV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetMyProfileAllowUpdateStatusV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyProfileAllowUpdateStatusV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetMyProfileAllowUpdateStatusV3Forbidden creates a PublicGetMyProfileAllowUpdateStatusV3Forbidden with default headers values
func NewPublicGetMyProfileAllowUpdateStatusV3Forbidden() *PublicGetMyProfileAllowUpdateStatusV3Forbidden {
	return &PublicGetMyProfileAllowUpdateStatusV3Forbidden{}
}

/*PublicGetMyProfileAllowUpdateStatusV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetMyProfileAllowUpdateStatusV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyProfileAllowUpdateStatusV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/profileStatus][%d] publicGetMyProfileAllowUpdateStatusV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetMyProfileAllowUpdateStatusV3Forbidden) ToJSONString() string {
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

func (o *PublicGetMyProfileAllowUpdateStatusV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyProfileAllowUpdateStatusV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetMyProfileAllowUpdateStatusV3InternalServerError creates a PublicGetMyProfileAllowUpdateStatusV3InternalServerError with default headers values
func NewPublicGetMyProfileAllowUpdateStatusV3InternalServerError() *PublicGetMyProfileAllowUpdateStatusV3InternalServerError {
	return &PublicGetMyProfileAllowUpdateStatusV3InternalServerError{}
}

/*PublicGetMyProfileAllowUpdateStatusV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetMyProfileAllowUpdateStatusV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyProfileAllowUpdateStatusV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/profileStatus][%d] publicGetMyProfileAllowUpdateStatusV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetMyProfileAllowUpdateStatusV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetMyProfileAllowUpdateStatusV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyProfileAllowUpdateStatusV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
