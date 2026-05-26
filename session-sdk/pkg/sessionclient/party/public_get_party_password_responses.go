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

// PublicGetPartyPasswordReader is a Reader for the PublicGetPartyPassword structure.
type PublicGetPartyPasswordReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetPartyPasswordReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetPartyPasswordOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetPartyPasswordBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetPartyPasswordUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetPartyPasswordForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetPartyPasswordNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetPartyPasswordInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/password returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetPartyPasswordOK creates a PublicGetPartyPasswordOK with default headers values
func NewPublicGetPartyPasswordOK() *PublicGetPartyPasswordOK {
	return &PublicGetPartyPasswordOK{}
}

/*PublicGetPartyPasswordOK handles this case with default header values.

  OK
*/
type PublicGetPartyPasswordOK struct {
	Payload *sessionclientmodels.ApimodelsGetPasswordResponse
}

func (o *PublicGetPartyPasswordOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicGetPartyPasswordOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetPartyPasswordOK) ToJSONString() string {
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

func (o *PublicGetPartyPasswordOK) GetPayload() *sessionclientmodels.ApimodelsGetPasswordResponse {
	return o.Payload
}

func (o *PublicGetPartyPasswordOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsGetPasswordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPartyPasswordBadRequest creates a PublicGetPartyPasswordBadRequest with default headers values
func NewPublicGetPartyPasswordBadRequest() *PublicGetPartyPasswordBadRequest {
	return &PublicGetPartyPasswordBadRequest{}
}

/*PublicGetPartyPasswordBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetPartyPasswordBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPartyPasswordBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicGetPartyPasswordBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetPartyPasswordBadRequest) ToJSONString() string {
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

func (o *PublicGetPartyPasswordBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPartyPasswordBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyPasswordUnauthorized creates a PublicGetPartyPasswordUnauthorized with default headers values
func NewPublicGetPartyPasswordUnauthorized() *PublicGetPartyPasswordUnauthorized {
	return &PublicGetPartyPasswordUnauthorized{}
}

/*PublicGetPartyPasswordUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetPartyPasswordUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPartyPasswordUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicGetPartyPasswordUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetPartyPasswordUnauthorized) ToJSONString() string {
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

func (o *PublicGetPartyPasswordUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPartyPasswordUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyPasswordForbidden creates a PublicGetPartyPasswordForbidden with default headers values
func NewPublicGetPartyPasswordForbidden() *PublicGetPartyPasswordForbidden {
	return &PublicGetPartyPasswordForbidden{}
}

/*PublicGetPartyPasswordForbidden handles this case with default header values.

  Forbidden
*/
type PublicGetPartyPasswordForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPartyPasswordForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicGetPartyPasswordForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetPartyPasswordForbidden) ToJSONString() string {
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

func (o *PublicGetPartyPasswordForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPartyPasswordForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyPasswordNotFound creates a PublicGetPartyPasswordNotFound with default headers values
func NewPublicGetPartyPasswordNotFound() *PublicGetPartyPasswordNotFound {
	return &PublicGetPartyPasswordNotFound{}
}

/*PublicGetPartyPasswordNotFound handles this case with default header values.

  Not Found
*/
type PublicGetPartyPasswordNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPartyPasswordNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicGetPartyPasswordNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetPartyPasswordNotFound) ToJSONString() string {
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

func (o *PublicGetPartyPasswordNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPartyPasswordNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyPasswordInternalServerError creates a PublicGetPartyPasswordInternalServerError with default headers values
func NewPublicGetPartyPasswordInternalServerError() *PublicGetPartyPasswordInternalServerError {
	return &PublicGetPartyPasswordInternalServerError{}
}

/*PublicGetPartyPasswordInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetPartyPasswordInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPartyPasswordInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicGetPartyPasswordInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetPartyPasswordInternalServerError) ToJSONString() string {
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

func (o *PublicGetPartyPasswordInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPartyPasswordInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
