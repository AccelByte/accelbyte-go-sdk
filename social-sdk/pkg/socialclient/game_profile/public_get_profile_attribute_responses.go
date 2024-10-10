// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_profile

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// PublicGetProfileAttributeReader is a Reader for the PublicGetProfileAttribute structure.
type PublicGetProfileAttributeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetProfileAttributeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetProfileAttributeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetProfileAttributeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetProfileAttributeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetProfileAttributeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetProfileAttributeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetProfileAttributeOK creates a PublicGetProfileAttributeOK with default headers values
func NewPublicGetProfileAttributeOK() *PublicGetProfileAttributeOK {
	return &PublicGetProfileAttributeOK{}
}

/*PublicGetProfileAttributeOK handles this case with default header values.

  successful operation
*/
type PublicGetProfileAttributeOK struct {
	Payload *socialclientmodels.Attribute
}

func (o *PublicGetProfileAttributeOK) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}][%d] publicGetProfileAttributeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetProfileAttributeOK) ToJSONString() string {
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

func (o *PublicGetProfileAttributeOK) GetPayload() *socialclientmodels.Attribute {
	return o.Payload
}

func (o *PublicGetProfileAttributeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.Attribute)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetProfileAttributeUnauthorized creates a PublicGetProfileAttributeUnauthorized with default headers values
func NewPublicGetProfileAttributeUnauthorized() *PublicGetProfileAttributeUnauthorized {
	return &PublicGetProfileAttributeUnauthorized{}
}

/*PublicGetProfileAttributeUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicGetProfileAttributeUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetProfileAttributeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}][%d] publicGetProfileAttributeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetProfileAttributeUnauthorized) ToJSONString() string {
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

func (o *PublicGetProfileAttributeUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetProfileAttributeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetProfileAttributeForbidden creates a PublicGetProfileAttributeForbidden with default headers values
func NewPublicGetProfileAttributeForbidden() *PublicGetProfileAttributeForbidden {
	return &PublicGetProfileAttributeForbidden{}
}

/*PublicGetProfileAttributeForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetProfileAttributeForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetProfileAttributeForbidden) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}][%d] publicGetProfileAttributeForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetProfileAttributeForbidden) ToJSONString() string {
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

func (o *PublicGetProfileAttributeForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetProfileAttributeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetProfileAttributeNotFound creates a PublicGetProfileAttributeNotFound with default headers values
func NewPublicGetProfileAttributeNotFound() *PublicGetProfileAttributeNotFound {
	return &PublicGetProfileAttributeNotFound{}
}

/*PublicGetProfileAttributeNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12041</td><td>Game profile with id [{profileId}] is not found</td></tr></table>
*/
type PublicGetProfileAttributeNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetProfileAttributeNotFound) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}][%d] publicGetProfileAttributeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetProfileAttributeNotFound) ToJSONString() string {
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

func (o *PublicGetProfileAttributeNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetProfileAttributeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetProfileAttributeInternalServerError creates a PublicGetProfileAttributeInternalServerError with default headers values
func NewPublicGetProfileAttributeInternalServerError() *PublicGetProfileAttributeInternalServerError {
	return &PublicGetProfileAttributeInternalServerError{}
}

/*PublicGetProfileAttributeInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicGetProfileAttributeInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetProfileAttributeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}][%d] publicGetProfileAttributeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetProfileAttributeInternalServerError) ToJSONString() string {
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

func (o *PublicGetProfileAttributeInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetProfileAttributeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
