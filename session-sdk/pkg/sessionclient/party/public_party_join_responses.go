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

// PublicPartyJoinReader is a Reader for the PublicPartyJoin structure.
type PublicPartyJoinReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPartyJoinReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicPartyJoinOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPartyJoinBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPartyJoinUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPartyJoinForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPartyJoinNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPartyJoinInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPartyJoinOK creates a PublicPartyJoinOK with default headers values
func NewPublicPartyJoinOK() *PublicPartyJoinOK {
	return &PublicPartyJoinOK{}
}

/*PublicPartyJoinOK handles this case with default header values.

  OK
*/
type PublicPartyJoinOK struct {
	Payload *sessionclientmodels.ApimodelsPartySessionResponse
}

func (o *PublicPartyJoinOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join][%d] publicPartyJoinOK  %+v", 200, o.ToJSONString())
}

func (o *PublicPartyJoinOK) ToJSONString() string {
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

func (o *PublicPartyJoinOK) GetPayload() *sessionclientmodels.ApimodelsPartySessionResponse {
	return o.Payload
}

func (o *PublicPartyJoinOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsPartySessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicPartyJoinBadRequest creates a PublicPartyJoinBadRequest with default headers values
func NewPublicPartyJoinBadRequest() *PublicPartyJoinBadRequest {
	return &PublicPartyJoinBadRequest{}
}

/*PublicPartyJoinBadRequest handles this case with default header values.

  Bad Request
*/
type PublicPartyJoinBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyJoinBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join][%d] publicPartyJoinBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPartyJoinBadRequest) ToJSONString() string {
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

func (o *PublicPartyJoinBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyJoinBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartyJoinUnauthorized creates a PublicPartyJoinUnauthorized with default headers values
func NewPublicPartyJoinUnauthorized() *PublicPartyJoinUnauthorized {
	return &PublicPartyJoinUnauthorized{}
}

/*PublicPartyJoinUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicPartyJoinUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyJoinUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join][%d] publicPartyJoinUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPartyJoinUnauthorized) ToJSONString() string {
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

func (o *PublicPartyJoinUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyJoinUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartyJoinForbidden creates a PublicPartyJoinForbidden with default headers values
func NewPublicPartyJoinForbidden() *PublicPartyJoinForbidden {
	return &PublicPartyJoinForbidden{}
}

/*PublicPartyJoinForbidden handles this case with default header values.

  Forbidden
*/
type PublicPartyJoinForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyJoinForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join][%d] publicPartyJoinForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPartyJoinForbidden) ToJSONString() string {
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

func (o *PublicPartyJoinForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyJoinForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartyJoinNotFound creates a PublicPartyJoinNotFound with default headers values
func NewPublicPartyJoinNotFound() *PublicPartyJoinNotFound {
	return &PublicPartyJoinNotFound{}
}

/*PublicPartyJoinNotFound handles this case with default header values.

  Not Found
*/
type PublicPartyJoinNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyJoinNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join][%d] publicPartyJoinNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPartyJoinNotFound) ToJSONString() string {
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

func (o *PublicPartyJoinNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyJoinNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartyJoinInternalServerError creates a PublicPartyJoinInternalServerError with default headers values
func NewPublicPartyJoinInternalServerError() *PublicPartyJoinInternalServerError {
	return &PublicPartyJoinInternalServerError{}
}

/*PublicPartyJoinInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicPartyJoinInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyJoinInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join][%d] publicPartyJoinInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPartyJoinInternalServerError) ToJSONString() string {
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

func (o *PublicPartyJoinInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyJoinInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
