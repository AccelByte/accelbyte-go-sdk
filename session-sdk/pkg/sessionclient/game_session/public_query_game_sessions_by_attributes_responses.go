// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

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

// PublicQueryGameSessionsByAttributesReader is a Reader for the PublicQueryGameSessionsByAttributes structure.
type PublicQueryGameSessionsByAttributesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicQueryGameSessionsByAttributesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicQueryGameSessionsByAttributesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicQueryGameSessionsByAttributesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicQueryGameSessionsByAttributesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicQueryGameSessionsByAttributesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicQueryGameSessionsByAttributesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/gamesessions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicQueryGameSessionsByAttributesOK creates a PublicQueryGameSessionsByAttributesOK with default headers values
func NewPublicQueryGameSessionsByAttributesOK() *PublicQueryGameSessionsByAttributesOK {
	return &PublicQueryGameSessionsByAttributesOK{}
}

/*PublicQueryGameSessionsByAttributesOK handles this case with default header values.

  OK
*/
type PublicQueryGameSessionsByAttributesOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionQueryResponse
}

func (o *PublicQueryGameSessionsByAttributesOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions][%d] publicQueryGameSessionsByAttributesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicQueryGameSessionsByAttributesOK) ToJSONString() string {
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

func (o *PublicQueryGameSessionsByAttributesOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionQueryResponse {
	return o.Payload
}

func (o *PublicQueryGameSessionsByAttributesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsGameSessionQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryGameSessionsByAttributesBadRequest creates a PublicQueryGameSessionsByAttributesBadRequest with default headers values
func NewPublicQueryGameSessionsByAttributesBadRequest() *PublicQueryGameSessionsByAttributesBadRequest {
	return &PublicQueryGameSessionsByAttributesBadRequest{}
}

/*PublicQueryGameSessionsByAttributesBadRequest handles this case with default header values.

  Bad Request
*/
type PublicQueryGameSessionsByAttributesBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryGameSessionsByAttributesBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions][%d] publicQueryGameSessionsByAttributesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicQueryGameSessionsByAttributesBadRequest) ToJSONString() string {
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

func (o *PublicQueryGameSessionsByAttributesBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionsByAttributesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryGameSessionsByAttributesUnauthorized creates a PublicQueryGameSessionsByAttributesUnauthorized with default headers values
func NewPublicQueryGameSessionsByAttributesUnauthorized() *PublicQueryGameSessionsByAttributesUnauthorized {
	return &PublicQueryGameSessionsByAttributesUnauthorized{}
}

/*PublicQueryGameSessionsByAttributesUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicQueryGameSessionsByAttributesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryGameSessionsByAttributesUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions][%d] publicQueryGameSessionsByAttributesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicQueryGameSessionsByAttributesUnauthorized) ToJSONString() string {
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

func (o *PublicQueryGameSessionsByAttributesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionsByAttributesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryGameSessionsByAttributesForbidden creates a PublicQueryGameSessionsByAttributesForbidden with default headers values
func NewPublicQueryGameSessionsByAttributesForbidden() *PublicQueryGameSessionsByAttributesForbidden {
	return &PublicQueryGameSessionsByAttributesForbidden{}
}

/*PublicQueryGameSessionsByAttributesForbidden handles this case with default header values.

  Forbidden
*/
type PublicQueryGameSessionsByAttributesForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryGameSessionsByAttributesForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions][%d] publicQueryGameSessionsByAttributesForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicQueryGameSessionsByAttributesForbidden) ToJSONString() string {
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

func (o *PublicQueryGameSessionsByAttributesForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionsByAttributesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryGameSessionsByAttributesInternalServerError creates a PublicQueryGameSessionsByAttributesInternalServerError with default headers values
func NewPublicQueryGameSessionsByAttributesInternalServerError() *PublicQueryGameSessionsByAttributesInternalServerError {
	return &PublicQueryGameSessionsByAttributesInternalServerError{}
}

/*PublicQueryGameSessionsByAttributesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicQueryGameSessionsByAttributesInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryGameSessionsByAttributesInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions][%d] publicQueryGameSessionsByAttributesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicQueryGameSessionsByAttributesInternalServerError) ToJSONString() string {
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

func (o *PublicQueryGameSessionsByAttributesInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionsByAttributesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
