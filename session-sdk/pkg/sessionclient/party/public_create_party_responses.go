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

// PublicCreatePartyReader is a Reader for the PublicCreateParty structure.
type PublicCreatePartyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCreatePartyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicCreatePartyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicCreatePartyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicCreatePartyUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicCreatePartyInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/party returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCreatePartyOK creates a PublicCreatePartyOK with default headers values
func NewPublicCreatePartyOK() *PublicCreatePartyOK {
	return &PublicCreatePartyOK{}
}

/*PublicCreatePartyOK handles this case with default header values.

  OK
*/
type PublicCreatePartyOK struct {
	Payload *sessionclientmodels.ApimodelsPartySessionResponse
}

func (o *PublicCreatePartyOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/party][%d] publicCreatePartyOK  %+v", 200, o.ToJSONString())
}

func (o *PublicCreatePartyOK) ToJSONString() string {
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

func (o *PublicCreatePartyOK) GetPayload() *sessionclientmodels.ApimodelsPartySessionResponse {
	return o.Payload
}

func (o *PublicCreatePartyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreatePartyBadRequest creates a PublicCreatePartyBadRequest with default headers values
func NewPublicCreatePartyBadRequest() *PublicCreatePartyBadRequest {
	return &PublicCreatePartyBadRequest{}
}

/*PublicCreatePartyBadRequest handles this case with default header values.

  Bad Request
*/
type PublicCreatePartyBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicCreatePartyBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/party][%d] publicCreatePartyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicCreatePartyBadRequest) ToJSONString() string {
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

func (o *PublicCreatePartyBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCreatePartyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreatePartyUnauthorized creates a PublicCreatePartyUnauthorized with default headers values
func NewPublicCreatePartyUnauthorized() *PublicCreatePartyUnauthorized {
	return &PublicCreatePartyUnauthorized{}
}

/*PublicCreatePartyUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicCreatePartyUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicCreatePartyUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/party][%d] publicCreatePartyUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicCreatePartyUnauthorized) ToJSONString() string {
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

func (o *PublicCreatePartyUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCreatePartyUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreatePartyInternalServerError creates a PublicCreatePartyInternalServerError with default headers values
func NewPublicCreatePartyInternalServerError() *PublicCreatePartyInternalServerError {
	return &PublicCreatePartyInternalServerError{}
}

/*PublicCreatePartyInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicCreatePartyInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicCreatePartyInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/party][%d] publicCreatePartyInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicCreatePartyInternalServerError) ToJSONString() string {
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

func (o *PublicCreatePartyInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCreatePartyInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
