// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

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

// PublicPartyCancelReader is a Reader for the PublicPartyCancel structure.
type PublicPartyCancelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPartyCancelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicPartyCancelNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPartyCancelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPartyCancelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPartyCancelForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPartyCancelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPartyCancelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPartyCancelNoContent creates a PublicPartyCancelNoContent with default headers values
func NewPublicPartyCancelNoContent() *PublicPartyCancelNoContent {
	return &PublicPartyCancelNoContent{}
}

/*PublicPartyCancelNoContent handles this case with default header values.

  No Content
*/
type PublicPartyCancelNoContent struct {
}

func (o *PublicPartyCancelNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel][%d] publicPartyCancelNoContent ", 204)
}

func (o *PublicPartyCancelNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPartyCancelBadRequest creates a PublicPartyCancelBadRequest with default headers values
func NewPublicPartyCancelBadRequest() *PublicPartyCancelBadRequest {
	return &PublicPartyCancelBadRequest{}
}

/*PublicPartyCancelBadRequest handles this case with default header values.

  Bad Request
*/
type PublicPartyCancelBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyCancelBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel][%d] publicPartyCancelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPartyCancelBadRequest) ToJSONString() string {
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

func (o *PublicPartyCancelBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyCancelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPartyCancelUnauthorized creates a PublicPartyCancelUnauthorized with default headers values
func NewPublicPartyCancelUnauthorized() *PublicPartyCancelUnauthorized {
	return &PublicPartyCancelUnauthorized{}
}

/*PublicPartyCancelUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicPartyCancelUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyCancelUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel][%d] publicPartyCancelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPartyCancelUnauthorized) ToJSONString() string {
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

func (o *PublicPartyCancelUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyCancelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPartyCancelForbidden creates a PublicPartyCancelForbidden with default headers values
func NewPublicPartyCancelForbidden() *PublicPartyCancelForbidden {
	return &PublicPartyCancelForbidden{}
}

/*PublicPartyCancelForbidden handles this case with default header values.

  Forbidden
*/
type PublicPartyCancelForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyCancelForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel][%d] publicPartyCancelForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPartyCancelForbidden) ToJSONString() string {
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

func (o *PublicPartyCancelForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyCancelForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPartyCancelNotFound creates a PublicPartyCancelNotFound with default headers values
func NewPublicPartyCancelNotFound() *PublicPartyCancelNotFound {
	return &PublicPartyCancelNotFound{}
}

/*PublicPartyCancelNotFound handles this case with default header values.

  Not Found
*/
type PublicPartyCancelNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyCancelNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel][%d] publicPartyCancelNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPartyCancelNotFound) ToJSONString() string {
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

func (o *PublicPartyCancelNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyCancelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPartyCancelInternalServerError creates a PublicPartyCancelInternalServerError with default headers values
func NewPublicPartyCancelInternalServerError() *PublicPartyCancelInternalServerError {
	return &PublicPartyCancelInternalServerError{}
}

/*PublicPartyCancelInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicPartyCancelInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyCancelInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel][%d] publicPartyCancelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPartyCancelInternalServerError) ToJSONString() string {
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

func (o *PublicPartyCancelInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyCancelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
