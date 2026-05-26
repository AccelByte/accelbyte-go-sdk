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

// PublicUpdatePartyPasswordReader is a Reader for the PublicUpdatePartyPassword structure.
type PublicUpdatePartyPasswordReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdatePartyPasswordReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicUpdatePartyPasswordNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdatePartyPasswordBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdatePartyPasswordUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdatePartyPasswordForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdatePartyPasswordNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdatePartyPasswordInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}/password returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdatePartyPasswordNoContent creates a PublicUpdatePartyPasswordNoContent with default headers values
func NewPublicUpdatePartyPasswordNoContent() *PublicUpdatePartyPasswordNoContent {
	return &PublicUpdatePartyPasswordNoContent{}
}

/*PublicUpdatePartyPasswordNoContent handles this case with default header values.

  No Content
*/
type PublicUpdatePartyPasswordNoContent struct {
}

func (o *PublicUpdatePartyPasswordNoContent) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicUpdatePartyPasswordNoContent ", 204)
}

func (o *PublicUpdatePartyPasswordNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicUpdatePartyPasswordBadRequest creates a PublicUpdatePartyPasswordBadRequest with default headers values
func NewPublicUpdatePartyPasswordBadRequest() *PublicUpdatePartyPasswordBadRequest {
	return &PublicUpdatePartyPasswordBadRequest{}
}

/*PublicUpdatePartyPasswordBadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdatePartyPasswordBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyPasswordBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicUpdatePartyPasswordBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdatePartyPasswordBadRequest) ToJSONString() string {
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

func (o *PublicUpdatePartyPasswordBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyPasswordBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePartyPasswordUnauthorized creates a PublicUpdatePartyPasswordUnauthorized with default headers values
func NewPublicUpdatePartyPasswordUnauthorized() *PublicUpdatePartyPasswordUnauthorized {
	return &PublicUpdatePartyPasswordUnauthorized{}
}

/*PublicUpdatePartyPasswordUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdatePartyPasswordUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyPasswordUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicUpdatePartyPasswordUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdatePartyPasswordUnauthorized) ToJSONString() string {
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

func (o *PublicUpdatePartyPasswordUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyPasswordUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePartyPasswordForbidden creates a PublicUpdatePartyPasswordForbidden with default headers values
func NewPublicUpdatePartyPasswordForbidden() *PublicUpdatePartyPasswordForbidden {
	return &PublicUpdatePartyPasswordForbidden{}
}

/*PublicUpdatePartyPasswordForbidden handles this case with default header values.

  Forbidden
*/
type PublicUpdatePartyPasswordForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyPasswordForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicUpdatePartyPasswordForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdatePartyPasswordForbidden) ToJSONString() string {
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

func (o *PublicUpdatePartyPasswordForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyPasswordForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePartyPasswordNotFound creates a PublicUpdatePartyPasswordNotFound with default headers values
func NewPublicUpdatePartyPasswordNotFound() *PublicUpdatePartyPasswordNotFound {
	return &PublicUpdatePartyPasswordNotFound{}
}

/*PublicUpdatePartyPasswordNotFound handles this case with default header values.

  Not Found
*/
type PublicUpdatePartyPasswordNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyPasswordNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicUpdatePartyPasswordNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdatePartyPasswordNotFound) ToJSONString() string {
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

func (o *PublicUpdatePartyPasswordNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyPasswordNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePartyPasswordInternalServerError creates a PublicUpdatePartyPasswordInternalServerError with default headers values
func NewPublicUpdatePartyPasswordInternalServerError() *PublicUpdatePartyPasswordInternalServerError {
	return &PublicUpdatePartyPasswordInternalServerError{}
}

/*PublicUpdatePartyPasswordInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdatePartyPasswordInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyPasswordInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}/password][%d] publicUpdatePartyPasswordInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdatePartyPasswordInternalServerError) ToJSONString() string {
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

func (o *PublicUpdatePartyPasswordInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyPasswordInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
