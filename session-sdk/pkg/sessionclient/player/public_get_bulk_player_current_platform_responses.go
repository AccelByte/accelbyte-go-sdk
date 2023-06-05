// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// PublicGetBulkPlayerCurrentPlatformReader is a Reader for the PublicGetBulkPlayerCurrentPlatform structure.
type PublicGetBulkPlayerCurrentPlatformReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetBulkPlayerCurrentPlatformReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetBulkPlayerCurrentPlatformOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetBulkPlayerCurrentPlatformBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetBulkPlayerCurrentPlatformUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetBulkPlayerCurrentPlatformNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetBulkPlayerCurrentPlatformInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/users/bulk/platform returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetBulkPlayerCurrentPlatformOK creates a PublicGetBulkPlayerCurrentPlatformOK with default headers values
func NewPublicGetBulkPlayerCurrentPlatformOK() *PublicGetBulkPlayerCurrentPlatformOK {
	return &PublicGetBulkPlayerCurrentPlatformOK{}
}

/*PublicGetBulkPlayerCurrentPlatformOK handles this case with default header values.

  OK
*/
type PublicGetBulkPlayerCurrentPlatformOK struct {
	Payload *sessionclientmodels.ApimodelsPlayersCurrentPlatformResponse
}

func (o *PublicGetBulkPlayerCurrentPlatformOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/users/bulk/platform][%d] publicGetBulkPlayerCurrentPlatformOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetBulkPlayerCurrentPlatformOK) ToJSONString() string {
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

func (o *PublicGetBulkPlayerCurrentPlatformOK) GetPayload() *sessionclientmodels.ApimodelsPlayersCurrentPlatformResponse {
	return o.Payload
}

func (o *PublicGetBulkPlayerCurrentPlatformOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsPlayersCurrentPlatformResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetBulkPlayerCurrentPlatformBadRequest creates a PublicGetBulkPlayerCurrentPlatformBadRequest with default headers values
func NewPublicGetBulkPlayerCurrentPlatformBadRequest() *PublicGetBulkPlayerCurrentPlatformBadRequest {
	return &PublicGetBulkPlayerCurrentPlatformBadRequest{}
}

/*PublicGetBulkPlayerCurrentPlatformBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetBulkPlayerCurrentPlatformBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetBulkPlayerCurrentPlatformBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/users/bulk/platform][%d] publicGetBulkPlayerCurrentPlatformBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetBulkPlayerCurrentPlatformBadRequest) ToJSONString() string {
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

func (o *PublicGetBulkPlayerCurrentPlatformBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetBulkPlayerCurrentPlatformBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetBulkPlayerCurrentPlatformUnauthorized creates a PublicGetBulkPlayerCurrentPlatformUnauthorized with default headers values
func NewPublicGetBulkPlayerCurrentPlatformUnauthorized() *PublicGetBulkPlayerCurrentPlatformUnauthorized {
	return &PublicGetBulkPlayerCurrentPlatformUnauthorized{}
}

/*PublicGetBulkPlayerCurrentPlatformUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetBulkPlayerCurrentPlatformUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetBulkPlayerCurrentPlatformUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/users/bulk/platform][%d] publicGetBulkPlayerCurrentPlatformUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetBulkPlayerCurrentPlatformUnauthorized) ToJSONString() string {
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

func (o *PublicGetBulkPlayerCurrentPlatformUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetBulkPlayerCurrentPlatformUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetBulkPlayerCurrentPlatformNotFound creates a PublicGetBulkPlayerCurrentPlatformNotFound with default headers values
func NewPublicGetBulkPlayerCurrentPlatformNotFound() *PublicGetBulkPlayerCurrentPlatformNotFound {
	return &PublicGetBulkPlayerCurrentPlatformNotFound{}
}

/*PublicGetBulkPlayerCurrentPlatformNotFound handles this case with default header values.

  Not Found
*/
type PublicGetBulkPlayerCurrentPlatformNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetBulkPlayerCurrentPlatformNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/users/bulk/platform][%d] publicGetBulkPlayerCurrentPlatformNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetBulkPlayerCurrentPlatformNotFound) ToJSONString() string {
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

func (o *PublicGetBulkPlayerCurrentPlatformNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetBulkPlayerCurrentPlatformNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetBulkPlayerCurrentPlatformInternalServerError creates a PublicGetBulkPlayerCurrentPlatformInternalServerError with default headers values
func NewPublicGetBulkPlayerCurrentPlatformInternalServerError() *PublicGetBulkPlayerCurrentPlatformInternalServerError {
	return &PublicGetBulkPlayerCurrentPlatformInternalServerError{}
}

/*PublicGetBulkPlayerCurrentPlatformInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetBulkPlayerCurrentPlatformInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetBulkPlayerCurrentPlatformInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/users/bulk/platform][%d] publicGetBulkPlayerCurrentPlatformInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetBulkPlayerCurrentPlatformInternalServerError) ToJSONString() string {
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

func (o *PublicGetBulkPlayerCurrentPlatformInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetBulkPlayerCurrentPlatformInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
