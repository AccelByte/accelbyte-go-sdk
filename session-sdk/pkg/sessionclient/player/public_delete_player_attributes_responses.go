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

// PublicDeletePlayerAttributesReader is a Reader for the PublicDeletePlayerAttributes structure.
type PublicDeletePlayerAttributesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDeletePlayerAttributesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicDeletePlayerAttributesNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicDeletePlayerAttributesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDeletePlayerAttributesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDeletePlayerAttributesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDeletePlayerAttributesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/users/me/attributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDeletePlayerAttributesNoContent creates a PublicDeletePlayerAttributesNoContent with default headers values
func NewPublicDeletePlayerAttributesNoContent() *PublicDeletePlayerAttributesNoContent {
	return &PublicDeletePlayerAttributesNoContent{}
}

/*PublicDeletePlayerAttributesNoContent handles this case with default header values.

  No Content
*/
type PublicDeletePlayerAttributesNoContent struct {
}

func (o *PublicDeletePlayerAttributesNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicDeletePlayerAttributesNoContent ", 204)
}

func (o *PublicDeletePlayerAttributesNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDeletePlayerAttributesBadRequest creates a PublicDeletePlayerAttributesBadRequest with default headers values
func NewPublicDeletePlayerAttributesBadRequest() *PublicDeletePlayerAttributesBadRequest {
	return &PublicDeletePlayerAttributesBadRequest{}
}

/*PublicDeletePlayerAttributesBadRequest handles this case with default header values.

  Bad Request
*/
type PublicDeletePlayerAttributesBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicDeletePlayerAttributesBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicDeletePlayerAttributesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicDeletePlayerAttributesBadRequest) ToJSONString() string {
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

func (o *PublicDeletePlayerAttributesBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDeletePlayerAttributesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDeletePlayerAttributesUnauthorized creates a PublicDeletePlayerAttributesUnauthorized with default headers values
func NewPublicDeletePlayerAttributesUnauthorized() *PublicDeletePlayerAttributesUnauthorized {
	return &PublicDeletePlayerAttributesUnauthorized{}
}

/*PublicDeletePlayerAttributesUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicDeletePlayerAttributesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicDeletePlayerAttributesUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicDeletePlayerAttributesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDeletePlayerAttributesUnauthorized) ToJSONString() string {
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

func (o *PublicDeletePlayerAttributesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDeletePlayerAttributesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDeletePlayerAttributesNotFound creates a PublicDeletePlayerAttributesNotFound with default headers values
func NewPublicDeletePlayerAttributesNotFound() *PublicDeletePlayerAttributesNotFound {
	return &PublicDeletePlayerAttributesNotFound{}
}

/*PublicDeletePlayerAttributesNotFound handles this case with default header values.

  Not Found
*/
type PublicDeletePlayerAttributesNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicDeletePlayerAttributesNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicDeletePlayerAttributesNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDeletePlayerAttributesNotFound) ToJSONString() string {
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

func (o *PublicDeletePlayerAttributesNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDeletePlayerAttributesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDeletePlayerAttributesInternalServerError creates a PublicDeletePlayerAttributesInternalServerError with default headers values
func NewPublicDeletePlayerAttributesInternalServerError() *PublicDeletePlayerAttributesInternalServerError {
	return &PublicDeletePlayerAttributesInternalServerError{}
}

/*PublicDeletePlayerAttributesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicDeletePlayerAttributesInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicDeletePlayerAttributesInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicDeletePlayerAttributesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDeletePlayerAttributesInternalServerError) ToJSONString() string {
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

func (o *PublicDeletePlayerAttributesInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDeletePlayerAttributesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
