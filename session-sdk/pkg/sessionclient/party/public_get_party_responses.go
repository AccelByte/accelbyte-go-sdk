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

// PublicGetPartyReader is a Reader for the PublicGetParty structure.
type PublicGetPartyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetPartyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetPartyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetPartyUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetPartyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetPartyInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/parties/{partyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetPartyOK creates a PublicGetPartyOK with default headers values
func NewPublicGetPartyOK() *PublicGetPartyOK {
	return &PublicGetPartyOK{}
}

/*PublicGetPartyOK handles this case with default header values.

  OK
*/
type PublicGetPartyOK struct {
	Payload *sessionclientmodels.ApimodelsPartySessionResponse
}

func (o *PublicGetPartyOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicGetPartyOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetPartyOK) ToJSONString() string {
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

func (o *PublicGetPartyOK) GetPayload() *sessionclientmodels.ApimodelsPartySessionResponse {
	return o.Payload
}

func (o *PublicGetPartyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyUnauthorized creates a PublicGetPartyUnauthorized with default headers values
func NewPublicGetPartyUnauthorized() *PublicGetPartyUnauthorized {
	return &PublicGetPartyUnauthorized{}
}

/*PublicGetPartyUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetPartyUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPartyUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicGetPartyUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetPartyUnauthorized) ToJSONString() string {
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

func (o *PublicGetPartyUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPartyUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyNotFound creates a PublicGetPartyNotFound with default headers values
func NewPublicGetPartyNotFound() *PublicGetPartyNotFound {
	return &PublicGetPartyNotFound{}
}

/*PublicGetPartyNotFound handles this case with default header values.

  Not Found
*/
type PublicGetPartyNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPartyNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicGetPartyNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetPartyNotFound) ToJSONString() string {
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

func (o *PublicGetPartyNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPartyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyInternalServerError creates a PublicGetPartyInternalServerError with default headers values
func NewPublicGetPartyInternalServerError() *PublicGetPartyInternalServerError {
	return &PublicGetPartyInternalServerError{}
}

/*PublicGetPartyInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetPartyInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPartyInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicGetPartyInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetPartyInternalServerError) ToJSONString() string {
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

func (o *PublicGetPartyInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPartyInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
