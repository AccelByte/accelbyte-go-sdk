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

// PublicGetUserPublicInfoByUserIDV4Reader is a Reader for the PublicGetUserPublicInfoByUserIDV4 structure.
type PublicGetUserPublicInfoByUserIDV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserPublicInfoByUserIDV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserPublicInfoByUserIDV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUserPublicInfoByUserIDV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserPublicInfoByUserIDV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserPublicInfoByUserIDV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/public/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserPublicInfoByUserIDV4OK creates a PublicGetUserPublicInfoByUserIDV4OK with default headers values
func NewPublicGetUserPublicInfoByUserIDV4OK() *PublicGetUserPublicInfoByUserIDV4OK {
	return &PublicGetUserPublicInfoByUserIDV4OK{}
}

/*PublicGetUserPublicInfoByUserIDV4OK handles this case with default header values.

  OK
*/
type PublicGetUserPublicInfoByUserIDV4OK struct {
	Payload *iamclientmodels.ModelUserPublicInfoResponseV4
}

func (o *PublicGetUserPublicInfoByUserIDV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserPublicInfoByUserIdV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserPublicInfoByUserIDV4OK) ToJSONString() string {
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

func (o *PublicGetUserPublicInfoByUserIDV4OK) GetPayload() *iamclientmodels.ModelUserPublicInfoResponseV4 {
	return o.Payload
}

func (o *PublicGetUserPublicInfoByUserIDV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserPublicInfoResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserPublicInfoByUserIDV4BadRequest creates a PublicGetUserPublicInfoByUserIDV4BadRequest with default headers values
func NewPublicGetUserPublicInfoByUserIDV4BadRequest() *PublicGetUserPublicInfoByUserIDV4BadRequest {
	return &PublicGetUserPublicInfoByUserIDV4BadRequest{}
}

/*PublicGetUserPublicInfoByUserIDV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetUserPublicInfoByUserIDV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserPublicInfoByUserIDV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserPublicInfoByUserIdV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUserPublicInfoByUserIDV4BadRequest) ToJSONString() string {
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

func (o *PublicGetUserPublicInfoByUserIDV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserPublicInfoByUserIDV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserPublicInfoByUserIDV4NotFound creates a PublicGetUserPublicInfoByUserIDV4NotFound with default headers values
func NewPublicGetUserPublicInfoByUserIDV4NotFound() *PublicGetUserPublicInfoByUserIDV4NotFound {
	return &PublicGetUserPublicInfoByUserIDV4NotFound{}
}

/*PublicGetUserPublicInfoByUserIDV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type PublicGetUserPublicInfoByUserIDV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserPublicInfoByUserIDV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserPublicInfoByUserIdV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserPublicInfoByUserIDV4NotFound) ToJSONString() string {
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

func (o *PublicGetUserPublicInfoByUserIDV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserPublicInfoByUserIDV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserPublicInfoByUserIDV4InternalServerError creates a PublicGetUserPublicInfoByUserIDV4InternalServerError with default headers values
func NewPublicGetUserPublicInfoByUserIDV4InternalServerError() *PublicGetUserPublicInfoByUserIDV4InternalServerError {
	return &PublicGetUserPublicInfoByUserIDV4InternalServerError{}
}

/*PublicGetUserPublicInfoByUserIDV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetUserPublicInfoByUserIDV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserPublicInfoByUserIDV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/{userId}][%d] publicGetUserPublicInfoByUserIdV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserPublicInfoByUserIDV4InternalServerError) ToJSONString() string {
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

func (o *PublicGetUserPublicInfoByUserIDV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserPublicInfoByUserIDV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
