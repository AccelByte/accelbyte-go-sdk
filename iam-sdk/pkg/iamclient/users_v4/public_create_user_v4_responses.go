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

// PublicCreateUserV4Reader is a Reader for the PublicCreateUserV4 structure.
type PublicCreateUserV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCreateUserV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicCreateUserV4Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicCreateUserV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicCreateUserV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicCreateUserV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicCreateUserV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicCreateUserV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCreateUserV4Created creates a PublicCreateUserV4Created with default headers values
func NewPublicCreateUserV4Created() *PublicCreateUserV4Created {
	return &PublicCreateUserV4Created{}
}

/*PublicCreateUserV4Created handles this case with default header values.

  Created
*/
type PublicCreateUserV4Created struct {
	Payload *iamclientmodels.AccountCreateUserResponseV4
}

func (o *PublicCreateUserV4Created) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users][%d] publicCreateUserV4Created  %+v", 201, o.ToJSONString())
}

func (o *PublicCreateUserV4Created) ToJSONString() string {
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

func (o *PublicCreateUserV4Created) GetPayload() *iamclientmodels.AccountCreateUserResponseV4 {
	return o.Payload
}

func (o *PublicCreateUserV4Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountCreateUserResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCreateUserV4BadRequest creates a PublicCreateUserV4BadRequest with default headers values
func NewPublicCreateUserV4BadRequest() *PublicCreateUserV4BadRequest {
	return &PublicCreateUserV4BadRequest{}
}

/*PublicCreateUserV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10130</td><td>user under age</td></tr></table>
*/
type PublicCreateUserV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicCreateUserV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users][%d] publicCreateUserV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicCreateUserV4BadRequest) ToJSONString() string {
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

func (o *PublicCreateUserV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicCreateUserV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserV4Forbidden creates a PublicCreateUserV4Forbidden with default headers values
func NewPublicCreateUserV4Forbidden() *PublicCreateUserV4Forbidden {
	return &PublicCreateUserV4Forbidden{}
}

/*PublicCreateUserV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr><tr><td>10213</td><td>country is blocked</td></tr></table>
*/
type PublicCreateUserV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicCreateUserV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users][%d] publicCreateUserV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicCreateUserV4Forbidden) ToJSONString() string {
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

func (o *PublicCreateUserV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicCreateUserV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserV4NotFound creates a PublicCreateUserV4NotFound with default headers values
func NewPublicCreateUserV4NotFound() *PublicCreateUserV4NotFound {
	return &PublicCreateUserV4NotFound{}
}

/*PublicCreateUserV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10154</td><td>country not found</td></tr></table>
*/
type PublicCreateUserV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicCreateUserV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users][%d] publicCreateUserV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicCreateUserV4NotFound) ToJSONString() string {
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

func (o *PublicCreateUserV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicCreateUserV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserV4Conflict creates a PublicCreateUserV4Conflict with default headers values
func NewPublicCreateUserV4Conflict() *PublicCreateUserV4Conflict {
	return &PublicCreateUserV4Conflict{}
}

/*PublicCreateUserV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr><tr><td>10177</td><td>username already used</td></tr><tr><td>10222</td><td>unique display name already exists</td></tr></table>
*/
type PublicCreateUserV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicCreateUserV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users][%d] publicCreateUserV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicCreateUserV4Conflict) ToJSONString() string {
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

func (o *PublicCreateUserV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicCreateUserV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserV4InternalServerError creates a PublicCreateUserV4InternalServerError with default headers values
func NewPublicCreateUserV4InternalServerError() *PublicCreateUserV4InternalServerError {
	return &PublicCreateUserV4InternalServerError{}
}

/*PublicCreateUserV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicCreateUserV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicCreateUserV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users][%d] publicCreateUserV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicCreateUserV4InternalServerError) ToJSONString() string {
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

func (o *PublicCreateUserV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicCreateUserV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
