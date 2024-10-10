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

// PublicPromotePartyLeaderReader is a Reader for the PublicPromotePartyLeader structure.
type PublicPromotePartyLeaderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPromotePartyLeaderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicPromotePartyLeaderOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPromotePartyLeaderBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPromotePartyLeaderUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPromotePartyLeaderForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPromotePartyLeaderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPromotePartyLeaderInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/leader returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPromotePartyLeaderOK creates a PublicPromotePartyLeaderOK with default headers values
func NewPublicPromotePartyLeaderOK() *PublicPromotePartyLeaderOK {
	return &PublicPromotePartyLeaderOK{}
}

/*PublicPromotePartyLeaderOK handles this case with default header values.

  OK
*/
type PublicPromotePartyLeaderOK struct {
	Payload *sessionclientmodels.ApimodelsPartySessionResponse
}

func (o *PublicPromotePartyLeaderOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/leader][%d] publicPromotePartyLeaderOK  %+v", 200, o.ToJSONString())
}

func (o *PublicPromotePartyLeaderOK) ToJSONString() string {
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

func (o *PublicPromotePartyLeaderOK) GetPayload() *sessionclientmodels.ApimodelsPartySessionResponse {
	return o.Payload
}

func (o *PublicPromotePartyLeaderOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPromotePartyLeaderBadRequest creates a PublicPromotePartyLeaderBadRequest with default headers values
func NewPublicPromotePartyLeaderBadRequest() *PublicPromotePartyLeaderBadRequest {
	return &PublicPromotePartyLeaderBadRequest{}
}

/*PublicPromotePartyLeaderBadRequest handles this case with default header values.

  Bad Request
*/
type PublicPromotePartyLeaderBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPromotePartyLeaderBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/leader][%d] publicPromotePartyLeaderBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPromotePartyLeaderBadRequest) ToJSONString() string {
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

func (o *PublicPromotePartyLeaderBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPromotePartyLeaderBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPromotePartyLeaderUnauthorized creates a PublicPromotePartyLeaderUnauthorized with default headers values
func NewPublicPromotePartyLeaderUnauthorized() *PublicPromotePartyLeaderUnauthorized {
	return &PublicPromotePartyLeaderUnauthorized{}
}

/*PublicPromotePartyLeaderUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicPromotePartyLeaderUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPromotePartyLeaderUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/leader][%d] publicPromotePartyLeaderUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPromotePartyLeaderUnauthorized) ToJSONString() string {
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

func (o *PublicPromotePartyLeaderUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPromotePartyLeaderUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPromotePartyLeaderForbidden creates a PublicPromotePartyLeaderForbidden with default headers values
func NewPublicPromotePartyLeaderForbidden() *PublicPromotePartyLeaderForbidden {
	return &PublicPromotePartyLeaderForbidden{}
}

/*PublicPromotePartyLeaderForbidden handles this case with default header values.

  Forbidden
*/
type PublicPromotePartyLeaderForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPromotePartyLeaderForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/leader][%d] publicPromotePartyLeaderForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPromotePartyLeaderForbidden) ToJSONString() string {
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

func (o *PublicPromotePartyLeaderForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPromotePartyLeaderForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPromotePartyLeaderNotFound creates a PublicPromotePartyLeaderNotFound with default headers values
func NewPublicPromotePartyLeaderNotFound() *PublicPromotePartyLeaderNotFound {
	return &PublicPromotePartyLeaderNotFound{}
}

/*PublicPromotePartyLeaderNotFound handles this case with default header values.

  Not Found
*/
type PublicPromotePartyLeaderNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPromotePartyLeaderNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/leader][%d] publicPromotePartyLeaderNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPromotePartyLeaderNotFound) ToJSONString() string {
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

func (o *PublicPromotePartyLeaderNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPromotePartyLeaderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPromotePartyLeaderInternalServerError creates a PublicPromotePartyLeaderInternalServerError with default headers values
func NewPublicPromotePartyLeaderInternalServerError() *PublicPromotePartyLeaderInternalServerError {
	return &PublicPromotePartyLeaderInternalServerError{}
}

/*PublicPromotePartyLeaderInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicPromotePartyLeaderInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPromotePartyLeaderInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/leader][%d] publicPromotePartyLeaderInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPromotePartyLeaderInternalServerError) ToJSONString() string {
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

func (o *PublicPromotePartyLeaderInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPromotePartyLeaderInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
