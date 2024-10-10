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

// PublicGeneratePartyCodeReader is a Reader for the PublicGeneratePartyCode structure.
type PublicGeneratePartyCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGeneratePartyCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGeneratePartyCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGeneratePartyCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGeneratePartyCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGeneratePartyCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGeneratePartyCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGeneratePartyCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGeneratePartyCodeOK creates a PublicGeneratePartyCodeOK with default headers values
func NewPublicGeneratePartyCodeOK() *PublicGeneratePartyCodeOK {
	return &PublicGeneratePartyCodeOK{}
}

/*PublicGeneratePartyCodeOK handles this case with default header values.

  OK
*/
type PublicGeneratePartyCodeOK struct {
	Payload *sessionclientmodels.ApimodelsPartySessionResponse
}

func (o *PublicGeneratePartyCodeOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicGeneratePartyCodeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGeneratePartyCodeOK) ToJSONString() string {
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

func (o *PublicGeneratePartyCodeOK) GetPayload() *sessionclientmodels.ApimodelsPartySessionResponse {
	return o.Payload
}

func (o *PublicGeneratePartyCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratePartyCodeBadRequest creates a PublicGeneratePartyCodeBadRequest with default headers values
func NewPublicGeneratePartyCodeBadRequest() *PublicGeneratePartyCodeBadRequest {
	return &PublicGeneratePartyCodeBadRequest{}
}

/*PublicGeneratePartyCodeBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGeneratePartyCodeBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGeneratePartyCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicGeneratePartyCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGeneratePartyCodeBadRequest) ToJSONString() string {
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

func (o *PublicGeneratePartyCodeBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGeneratePartyCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratePartyCodeUnauthorized creates a PublicGeneratePartyCodeUnauthorized with default headers values
func NewPublicGeneratePartyCodeUnauthorized() *PublicGeneratePartyCodeUnauthorized {
	return &PublicGeneratePartyCodeUnauthorized{}
}

/*PublicGeneratePartyCodeUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGeneratePartyCodeUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGeneratePartyCodeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicGeneratePartyCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGeneratePartyCodeUnauthorized) ToJSONString() string {
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

func (o *PublicGeneratePartyCodeUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGeneratePartyCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratePartyCodeForbidden creates a PublicGeneratePartyCodeForbidden with default headers values
func NewPublicGeneratePartyCodeForbidden() *PublicGeneratePartyCodeForbidden {
	return &PublicGeneratePartyCodeForbidden{}
}

/*PublicGeneratePartyCodeForbidden handles this case with default header values.

  Forbidden
*/
type PublicGeneratePartyCodeForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGeneratePartyCodeForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicGeneratePartyCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGeneratePartyCodeForbidden) ToJSONString() string {
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

func (o *PublicGeneratePartyCodeForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGeneratePartyCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratePartyCodeNotFound creates a PublicGeneratePartyCodeNotFound with default headers values
func NewPublicGeneratePartyCodeNotFound() *PublicGeneratePartyCodeNotFound {
	return &PublicGeneratePartyCodeNotFound{}
}

/*PublicGeneratePartyCodeNotFound handles this case with default header values.

  Not Found
*/
type PublicGeneratePartyCodeNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGeneratePartyCodeNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicGeneratePartyCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGeneratePartyCodeNotFound) ToJSONString() string {
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

func (o *PublicGeneratePartyCodeNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGeneratePartyCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratePartyCodeInternalServerError creates a PublicGeneratePartyCodeInternalServerError with default headers values
func NewPublicGeneratePartyCodeInternalServerError() *PublicGeneratePartyCodeInternalServerError {
	return &PublicGeneratePartyCodeInternalServerError{}
}

/*PublicGeneratePartyCodeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGeneratePartyCodeInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGeneratePartyCodeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicGeneratePartyCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGeneratePartyCodeInternalServerError) ToJSONString() string {
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

func (o *PublicGeneratePartyCodeInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGeneratePartyCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
