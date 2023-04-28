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

// ResetPasswordV3Reader is a Reader for the ResetPasswordV3 structure.
type ResetPasswordV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ResetPasswordV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewResetPasswordV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewResetPasswordV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewResetPasswordV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewResetPasswordV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewResetPasswordV3NoContent creates a ResetPasswordV3NoContent with default headers values
func NewResetPasswordV3NoContent() *ResetPasswordV3NoContent {
	return &ResetPasswordV3NoContent{}
}

/*ResetPasswordV3NoContent handles this case with default header values.

  Operation succeeded
*/
type ResetPasswordV3NoContent struct {
}

func (o *ResetPasswordV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/reset][%d] resetPasswordV3NoContent ", 204)
}

func (o *ResetPasswordV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewResetPasswordV3BadRequest creates a ResetPasswordV3BadRequest with default headers values
func NewResetPasswordV3BadRequest() *ResetPasswordV3BadRequest {
	return &ResetPasswordV3BadRequest{}
}

/*ResetPasswordV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10142</td><td>new password cannot be same with original</td></tr></table>
*/
type ResetPasswordV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *ResetPasswordV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/reset][%d] resetPasswordV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *ResetPasswordV3BadRequest) ToJSONString() string {
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

func (o *ResetPasswordV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *ResetPasswordV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewResetPasswordV3Forbidden creates a ResetPasswordV3Forbidden with default headers values
func NewResetPasswordV3Forbidden() *ResetPasswordV3Forbidden {
	return &ResetPasswordV3Forbidden{}
}

/*ResetPasswordV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10137</td><td>code is expired</td></tr><tr><td>10136</td><td>code is either been used or not valid anymore</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10152</td><td>verification code not found</td></tr></table>
*/
type ResetPasswordV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *ResetPasswordV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/reset][%d] resetPasswordV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *ResetPasswordV3Forbidden) ToJSONString() string {
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

func (o *ResetPasswordV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *ResetPasswordV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewResetPasswordV3NotFound creates a ResetPasswordV3NotFound with default headers values
func NewResetPasswordV3NotFound() *ResetPasswordV3NotFound {
	return &ResetPasswordV3NotFound{}
}

/*ResetPasswordV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type ResetPasswordV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *ResetPasswordV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/reset][%d] resetPasswordV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *ResetPasswordV3NotFound) ToJSONString() string {
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

func (o *ResetPasswordV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *ResetPasswordV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
