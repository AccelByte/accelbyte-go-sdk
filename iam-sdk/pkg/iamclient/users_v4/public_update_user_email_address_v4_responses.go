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

// PublicUpdateUserEmailAddressV4Reader is a Reader for the PublicUpdateUserEmailAddressV4 structure.
type PublicUpdateUserEmailAddressV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateUserEmailAddressV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicUpdateUserEmailAddressV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateUserEmailAddressV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateUserEmailAddressV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateUserEmailAddressV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicUpdateUserEmailAddressV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateUserEmailAddressV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v4/public/namespaces/{namespace}/users/me/email returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateUserEmailAddressV4NoContent creates a PublicUpdateUserEmailAddressV4NoContent with default headers values
func NewPublicUpdateUserEmailAddressV4NoContent() *PublicUpdateUserEmailAddressV4NoContent {
	return &PublicUpdateUserEmailAddressV4NoContent{}
}

/*PublicUpdateUserEmailAddressV4NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicUpdateUserEmailAddressV4NoContent struct {
}

func (o *PublicUpdateUserEmailAddressV4NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/public/namespaces/{namespace}/users/me/email][%d] publicUpdateUserEmailAddressV4NoContent ", 204)
}

func (o *PublicUpdateUserEmailAddressV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicUpdateUserEmailAddressV4BadRequest creates a PublicUpdateUserEmailAddressV4BadRequest with default headers values
func NewPublicUpdateUserEmailAddressV4BadRequest() *PublicUpdateUserEmailAddressV4BadRequest {
	return &PublicUpdateUserEmailAddressV4BadRequest{}
}

/*PublicUpdateUserEmailAddressV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicUpdateUserEmailAddressV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdateUserEmailAddressV4BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/public/namespaces/{namespace}/users/me/email][%d] publicUpdateUserEmailAddressV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateUserEmailAddressV4BadRequest) ToJSONString() string {
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

func (o *PublicUpdateUserEmailAddressV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdateUserEmailAddressV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserEmailAddressV4Unauthorized creates a PublicUpdateUserEmailAddressV4Unauthorized with default headers values
func NewPublicUpdateUserEmailAddressV4Unauthorized() *PublicUpdateUserEmailAddressV4Unauthorized {
	return &PublicUpdateUserEmailAddressV4Unauthorized{}
}

/*PublicUpdateUserEmailAddressV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicUpdateUserEmailAddressV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdateUserEmailAddressV4Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/public/namespaces/{namespace}/users/me/email][%d] publicUpdateUserEmailAddressV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateUserEmailAddressV4Unauthorized) ToJSONString() string {
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

func (o *PublicUpdateUserEmailAddressV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdateUserEmailAddressV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserEmailAddressV4NotFound creates a PublicUpdateUserEmailAddressV4NotFound with default headers values
func NewPublicUpdateUserEmailAddressV4NotFound() *PublicUpdateUserEmailAddressV4NotFound {
	return &PublicUpdateUserEmailAddressV4NotFound{}
}

/*PublicUpdateUserEmailAddressV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicUpdateUserEmailAddressV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdateUserEmailAddressV4NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/public/namespaces/{namespace}/users/me/email][%d] publicUpdateUserEmailAddressV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateUserEmailAddressV4NotFound) ToJSONString() string {
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

func (o *PublicUpdateUserEmailAddressV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdateUserEmailAddressV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserEmailAddressV4Conflict creates a PublicUpdateUserEmailAddressV4Conflict with default headers values
func NewPublicUpdateUserEmailAddressV4Conflict() *PublicUpdateUserEmailAddressV4Conflict {
	return &PublicUpdateUserEmailAddressV4Conflict{}
}

/*PublicUpdateUserEmailAddressV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr></table>
*/
type PublicUpdateUserEmailAddressV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdateUserEmailAddressV4Conflict) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/public/namespaces/{namespace}/users/me/email][%d] publicUpdateUserEmailAddressV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicUpdateUserEmailAddressV4Conflict) ToJSONString() string {
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

func (o *PublicUpdateUserEmailAddressV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdateUserEmailAddressV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserEmailAddressV4InternalServerError creates a PublicUpdateUserEmailAddressV4InternalServerError with default headers values
func NewPublicUpdateUserEmailAddressV4InternalServerError() *PublicUpdateUserEmailAddressV4InternalServerError {
	return &PublicUpdateUserEmailAddressV4InternalServerError{}
}

/*PublicUpdateUserEmailAddressV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicUpdateUserEmailAddressV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdateUserEmailAddressV4InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/public/namespaces/{namespace}/users/me/email][%d] publicUpdateUserEmailAddressV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateUserEmailAddressV4InternalServerError) ToJSONString() string {
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

func (o *PublicUpdateUserEmailAddressV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdateUserEmailAddressV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
