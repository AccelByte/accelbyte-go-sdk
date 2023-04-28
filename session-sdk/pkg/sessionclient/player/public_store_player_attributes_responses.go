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

// PublicStorePlayerAttributesReader is a Reader for the PublicStorePlayerAttributes structure.
type PublicStorePlayerAttributesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicStorePlayerAttributesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicStorePlayerAttributesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicStorePlayerAttributesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicStorePlayerAttributesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicStorePlayerAttributesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/users/me/attributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicStorePlayerAttributesOK creates a PublicStorePlayerAttributesOK with default headers values
func NewPublicStorePlayerAttributesOK() *PublicStorePlayerAttributesOK {
	return &PublicStorePlayerAttributesOK{}
}

/*PublicStorePlayerAttributesOK handles this case with default header values.

  OK
*/
type PublicStorePlayerAttributesOK struct {
	Payload *sessionclientmodels.ApimodelsPlayerAttributesResponseBody
}

func (o *PublicStorePlayerAttributesOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicStorePlayerAttributesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicStorePlayerAttributesOK) ToJSONString() string {
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

func (o *PublicStorePlayerAttributesOK) GetPayload() *sessionclientmodels.ApimodelsPlayerAttributesResponseBody {
	return o.Payload
}

func (o *PublicStorePlayerAttributesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicStorePlayerAttributesBadRequest creates a PublicStorePlayerAttributesBadRequest with default headers values
func NewPublicStorePlayerAttributesBadRequest() *PublicStorePlayerAttributesBadRequest {
	return &PublicStorePlayerAttributesBadRequest{}
}

/*PublicStorePlayerAttributesBadRequest handles this case with default header values.

  Bad Request
*/
type PublicStorePlayerAttributesBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicStorePlayerAttributesBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicStorePlayerAttributesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicStorePlayerAttributesBadRequest) ToJSONString() string {
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

func (o *PublicStorePlayerAttributesBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicStorePlayerAttributesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicStorePlayerAttributesUnauthorized creates a PublicStorePlayerAttributesUnauthorized with default headers values
func NewPublicStorePlayerAttributesUnauthorized() *PublicStorePlayerAttributesUnauthorized {
	return &PublicStorePlayerAttributesUnauthorized{}
}

/*PublicStorePlayerAttributesUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicStorePlayerAttributesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicStorePlayerAttributesUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicStorePlayerAttributesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicStorePlayerAttributesUnauthorized) ToJSONString() string {
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

func (o *PublicStorePlayerAttributesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicStorePlayerAttributesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicStorePlayerAttributesInternalServerError creates a PublicStorePlayerAttributesInternalServerError with default headers values
func NewPublicStorePlayerAttributesInternalServerError() *PublicStorePlayerAttributesInternalServerError {
	return &PublicStorePlayerAttributesInternalServerError{}
}

/*PublicStorePlayerAttributesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicStorePlayerAttributesInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicStorePlayerAttributesInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/users/me/attributes][%d] publicStorePlayerAttributesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicStorePlayerAttributesInternalServerError) ToJSONString() string {
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

func (o *PublicStorePlayerAttributesInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicStorePlayerAttributesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
