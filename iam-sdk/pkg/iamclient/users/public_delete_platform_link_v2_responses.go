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

// PublicDeletePlatformLinkV2Reader is a Reader for the PublicDeletePlatformLinkV2 structure.
type PublicDeletePlatformLinkV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDeletePlatformLinkV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicDeletePlatformLinkV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicDeletePlatformLinkV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDeletePlatformLinkV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicDeletePlatformLinkV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDeletePlatformLinkV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDeletePlatformLinkV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDeletePlatformLinkV2NoContent creates a PublicDeletePlatformLinkV2NoContent with default headers values
func NewPublicDeletePlatformLinkV2NoContent() *PublicDeletePlatformLinkV2NoContent {
	return &PublicDeletePlatformLinkV2NoContent{}
}

/*PublicDeletePlatformLinkV2NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicDeletePlatformLinkV2NoContent struct {
}

func (o *PublicDeletePlatformLinkV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicDeletePlatformLinkV2NoContent ", 204)
}

func (o *PublicDeletePlatformLinkV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDeletePlatformLinkV2BadRequest creates a PublicDeletePlatformLinkV2BadRequest with default headers values
func NewPublicDeletePlatformLinkV2BadRequest() *PublicDeletePlatformLinkV2BadRequest {
	return &PublicDeletePlatformLinkV2BadRequest{}
}

/*PublicDeletePlatformLinkV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicDeletePlatformLinkV2BadRequest struct {
}

func (o *PublicDeletePlatformLinkV2BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicDeletePlatformLinkV2BadRequest ", 400)
}

func (o *PublicDeletePlatformLinkV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDeletePlatformLinkV2Unauthorized creates a PublicDeletePlatformLinkV2Unauthorized with default headers values
func NewPublicDeletePlatformLinkV2Unauthorized() *PublicDeletePlatformLinkV2Unauthorized {
	return &PublicDeletePlatformLinkV2Unauthorized{}
}

/*PublicDeletePlatformLinkV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicDeletePlatformLinkV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDeletePlatformLinkV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicDeletePlatformLinkV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDeletePlatformLinkV2Unauthorized) ToJSONString() string {
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

func (o *PublicDeletePlatformLinkV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDeletePlatformLinkV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeletePlatformLinkV2Forbidden creates a PublicDeletePlatformLinkV2Forbidden with default headers values
func NewPublicDeletePlatformLinkV2Forbidden() *PublicDeletePlatformLinkV2Forbidden {
	return &PublicDeletePlatformLinkV2Forbidden{}
}

/*PublicDeletePlatformLinkV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicDeletePlatformLinkV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDeletePlatformLinkV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicDeletePlatformLinkV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicDeletePlatformLinkV2Forbidden) ToJSONString() string {
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

func (o *PublicDeletePlatformLinkV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDeletePlatformLinkV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeletePlatformLinkV2NotFound creates a PublicDeletePlatformLinkV2NotFound with default headers values
func NewPublicDeletePlatformLinkV2NotFound() *PublicDeletePlatformLinkV2NotFound {
	return &PublicDeletePlatformLinkV2NotFound{}
}

/*PublicDeletePlatformLinkV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicDeletePlatformLinkV2NotFound struct {
}

func (o *PublicDeletePlatformLinkV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicDeletePlatformLinkV2NotFound ", 404)
}

func (o *PublicDeletePlatformLinkV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDeletePlatformLinkV2InternalServerError creates a PublicDeletePlatformLinkV2InternalServerError with default headers values
func NewPublicDeletePlatformLinkV2InternalServerError() *PublicDeletePlatformLinkV2InternalServerError {
	return &PublicDeletePlatformLinkV2InternalServerError{}
}

/*PublicDeletePlatformLinkV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicDeletePlatformLinkV2InternalServerError struct {
}

func (o *PublicDeletePlatformLinkV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] publicDeletePlatformLinkV2InternalServerError ", 500)
}

func (o *PublicDeletePlatformLinkV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
