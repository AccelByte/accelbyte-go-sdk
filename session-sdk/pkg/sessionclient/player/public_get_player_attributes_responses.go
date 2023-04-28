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

// PublicGetPlayerAttributesReader is a Reader for the PublicGetPlayerAttributes structure.
type PublicGetPlayerAttributesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetPlayerAttributesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetPlayerAttributesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetPlayerAttributesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetPlayerAttributesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetPlayerAttributesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetPlayerAttributesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/users/me/attributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetPlayerAttributesOK creates a PublicGetPlayerAttributesOK with default headers values
func NewPublicGetPlayerAttributesOK() *PublicGetPlayerAttributesOK {
	return &PublicGetPlayerAttributesOK{}
}

/*PublicGetPlayerAttributesOK handles this case with default header values.

  OK
*/
type PublicGetPlayerAttributesOK struct {
	Payload *sessionclientmodels.ApimodelsPlayerAttributesResponseBody
}

func (o *PublicGetPlayerAttributesOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicGetPlayerAttributesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetPlayerAttributesOK) ToJSONString() string {
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

func (o *PublicGetPlayerAttributesOK) GetPayload() *sessionclientmodels.ApimodelsPlayerAttributesResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerAttributesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsPlayerAttributesResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerAttributesBadRequest creates a PublicGetPlayerAttributesBadRequest with default headers values
func NewPublicGetPlayerAttributesBadRequest() *PublicGetPlayerAttributesBadRequest {
	return &PublicGetPlayerAttributesBadRequest{}
}

/*PublicGetPlayerAttributesBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetPlayerAttributesBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPlayerAttributesBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicGetPlayerAttributesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetPlayerAttributesBadRequest) ToJSONString() string {
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

func (o *PublicGetPlayerAttributesBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPlayerAttributesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPlayerAttributesUnauthorized creates a PublicGetPlayerAttributesUnauthorized with default headers values
func NewPublicGetPlayerAttributesUnauthorized() *PublicGetPlayerAttributesUnauthorized {
	return &PublicGetPlayerAttributesUnauthorized{}
}

/*PublicGetPlayerAttributesUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetPlayerAttributesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPlayerAttributesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicGetPlayerAttributesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetPlayerAttributesUnauthorized) ToJSONString() string {
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

func (o *PublicGetPlayerAttributesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPlayerAttributesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPlayerAttributesNotFound creates a PublicGetPlayerAttributesNotFound with default headers values
func NewPublicGetPlayerAttributesNotFound() *PublicGetPlayerAttributesNotFound {
	return &PublicGetPlayerAttributesNotFound{}
}

/*PublicGetPlayerAttributesNotFound handles this case with default header values.

  Not Found
*/
type PublicGetPlayerAttributesNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPlayerAttributesNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicGetPlayerAttributesNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetPlayerAttributesNotFound) ToJSONString() string {
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

func (o *PublicGetPlayerAttributesNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPlayerAttributesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPlayerAttributesInternalServerError creates a PublicGetPlayerAttributesInternalServerError with default headers values
func NewPublicGetPlayerAttributesInternalServerError() *PublicGetPlayerAttributesInternalServerError {
	return &PublicGetPlayerAttributesInternalServerError{}
}

/*PublicGetPlayerAttributesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetPlayerAttributesInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetPlayerAttributesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicGetPlayerAttributesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetPlayerAttributesInternalServerError) ToJSONString() string {
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

func (o *PublicGetPlayerAttributesInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPlayerAttributesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
