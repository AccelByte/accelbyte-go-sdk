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

// PublicPlatformLinkV2Reader is a Reader for the PublicPlatformLinkV2 structure.
type PublicPlatformLinkV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPlatformLinkV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicPlatformLinkV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPlatformLinkV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPlatformLinkV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPlatformLinkV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPlatformLinkV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicPlatformLinkV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPlatformLinkV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPlatformLinkV2NoContent creates a PublicPlatformLinkV2NoContent with default headers values
func NewPublicPlatformLinkV2NoContent() *PublicPlatformLinkV2NoContent {
	return &PublicPlatformLinkV2NoContent{}
}

/*PublicPlatformLinkV2NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicPlatformLinkV2NoContent struct {
}

func (o *PublicPlatformLinkV2NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicPlatformLinkV2NoContent ", 204)
}

func (o *PublicPlatformLinkV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPlatformLinkV2BadRequest creates a PublicPlatformLinkV2BadRequest with default headers values
func NewPublicPlatformLinkV2BadRequest() *PublicPlatformLinkV2BadRequest {
	return &PublicPlatformLinkV2BadRequest{}
}

/*PublicPlatformLinkV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicPlatformLinkV2BadRequest struct {
}

func (o *PublicPlatformLinkV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicPlatformLinkV2BadRequest ", 400)
}

func (o *PublicPlatformLinkV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPlatformLinkV2Unauthorized creates a PublicPlatformLinkV2Unauthorized with default headers values
func NewPublicPlatformLinkV2Unauthorized() *PublicPlatformLinkV2Unauthorized {
	return &PublicPlatformLinkV2Unauthorized{}
}

/*PublicPlatformLinkV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicPlatformLinkV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPlatformLinkV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicPlatformLinkV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPlatformLinkV2Unauthorized) ToJSONString() string {
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

func (o *PublicPlatformLinkV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPlatformLinkV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPlatformLinkV2Forbidden creates a PublicPlatformLinkV2Forbidden with default headers values
func NewPublicPlatformLinkV2Forbidden() *PublicPlatformLinkV2Forbidden {
	return &PublicPlatformLinkV2Forbidden{}
}

/*PublicPlatformLinkV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicPlatformLinkV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPlatformLinkV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicPlatformLinkV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPlatformLinkV2Forbidden) ToJSONString() string {
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

func (o *PublicPlatformLinkV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPlatformLinkV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPlatformLinkV2NotFound creates a PublicPlatformLinkV2NotFound with default headers values
func NewPublicPlatformLinkV2NotFound() *PublicPlatformLinkV2NotFound {
	return &PublicPlatformLinkV2NotFound{}
}

/*PublicPlatformLinkV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicPlatformLinkV2NotFound struct {
}

func (o *PublicPlatformLinkV2NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicPlatformLinkV2NotFound ", 404)
}

func (o *PublicPlatformLinkV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPlatformLinkV2Conflict creates a PublicPlatformLinkV2Conflict with default headers values
func NewPublicPlatformLinkV2Conflict() *PublicPlatformLinkV2Conflict {
	return &PublicPlatformLinkV2Conflict{}
}

/*PublicPlatformLinkV2Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10163</td><td>platform is already linked with the user account</td></tr></table>
*/
type PublicPlatformLinkV2Conflict struct {
}

func (o *PublicPlatformLinkV2Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicPlatformLinkV2Conflict ", 409)
}

func (o *PublicPlatformLinkV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPlatformLinkV2InternalServerError creates a PublicPlatformLinkV2InternalServerError with default headers values
func NewPublicPlatformLinkV2InternalServerError() *PublicPlatformLinkV2InternalServerError {
	return &PublicPlatformLinkV2InternalServerError{}
}

/*PublicPlatformLinkV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicPlatformLinkV2InternalServerError struct {
}

func (o *PublicPlatformLinkV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicPlatformLinkV2InternalServerError ", 500)
}

func (o *PublicPlatformLinkV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
