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

// PublicGetUserInformationV3Reader is a Reader for the PublicGetUserInformationV3 structure.
type PublicGetUserInformationV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserInformationV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserInformationV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserInformationV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserInformationV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserInformationV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserInformationV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/{userId}/information returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserInformationV3OK creates a PublicGetUserInformationV3OK with default headers values
func NewPublicGetUserInformationV3OK() *PublicGetUserInformationV3OK {
	return &PublicGetUserInformationV3OK{}
}

/*PublicGetUserInformationV3OK handles this case with default header values.

  OK
*/
type PublicGetUserInformationV3OK struct {
	Payload *iamclientmodels.AccountcommonUserInformationV3
}

func (o *PublicGetUserInformationV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/information][%d] publicGetUserInformationV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserInformationV3OK) ToJSONString() string {
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

func (o *PublicGetUserInformationV3OK) GetPayload() *iamclientmodels.AccountcommonUserInformationV3 {
	return o.Payload
}

func (o *PublicGetUserInformationV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonUserInformationV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserInformationV3Unauthorized creates a PublicGetUserInformationV3Unauthorized with default headers values
func NewPublicGetUserInformationV3Unauthorized() *PublicGetUserInformationV3Unauthorized {
	return &PublicGetUserInformationV3Unauthorized{}
}

/*PublicGetUserInformationV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicGetUserInformationV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserInformationV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/information][%d] publicGetUserInformationV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserInformationV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetUserInformationV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserInformationV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserInformationV3Forbidden creates a PublicGetUserInformationV3Forbidden with default headers values
func NewPublicGetUserInformationV3Forbidden() *PublicGetUserInformationV3Forbidden {
	return &PublicGetUserInformationV3Forbidden{}
}

/*PublicGetUserInformationV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetUserInformationV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserInformationV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/information][%d] publicGetUserInformationV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserInformationV3Forbidden) ToJSONString() string {
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

func (o *PublicGetUserInformationV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserInformationV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserInformationV3NotFound creates a PublicGetUserInformationV3NotFound with default headers values
func NewPublicGetUserInformationV3NotFound() *PublicGetUserInformationV3NotFound {
	return &PublicGetUserInformationV3NotFound{}
}

/*PublicGetUserInformationV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicGetUserInformationV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserInformationV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/information][%d] publicGetUserInformationV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserInformationV3NotFound) ToJSONString() string {
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

func (o *PublicGetUserInformationV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserInformationV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserInformationV3InternalServerError creates a PublicGetUserInformationV3InternalServerError with default headers values
func NewPublicGetUserInformationV3InternalServerError() *PublicGetUserInformationV3InternalServerError {
	return &PublicGetUserInformationV3InternalServerError{}
}

/*PublicGetUserInformationV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetUserInformationV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserInformationV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/information][%d] publicGetUserInformationV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserInformationV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetUserInformationV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserInformationV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
