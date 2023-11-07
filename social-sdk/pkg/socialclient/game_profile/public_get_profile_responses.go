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

// PublicGetProfileReader is a Reader for the PublicGetProfile structure.
type PublicGetProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetProfileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetProfileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetProfileInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetProfileOK creates a PublicGetProfileOK with default headers values
func NewPublicGetProfileOK() *PublicGetProfileOK {
	return &PublicGetProfileOK{}
}

/*PublicGetProfileOK handles this case with default header values.

  successful operation
*/
type PublicGetProfileOK struct {
	Payload *socialclientmodels.GameProfileInfo
}

func (o *PublicGetProfileOK) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicGetProfileOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetProfileOK) ToJSONString() string {
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

func (o *PublicGetProfileOK) GetPayload() *socialclientmodels.GameProfileInfo {
	return o.Payload
}

func (o *PublicGetProfileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.GameProfileInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetProfileUnauthorized creates a PublicGetProfileUnauthorized with default headers values
func NewPublicGetProfileUnauthorized() *PublicGetProfileUnauthorized {
	return &PublicGetProfileUnauthorized{}
}

/*PublicGetProfileUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicGetProfileUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetProfileUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicGetProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetProfileUnauthorized) ToJSONString() string {
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

func (o *PublicGetProfileUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetProfileForbidden creates a PublicGetProfileForbidden with default headers values
func NewPublicGetProfileForbidden() *PublicGetProfileForbidden {
	return &PublicGetProfileForbidden{}
}

/*PublicGetProfileForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetProfileForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetProfileForbidden) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicGetProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetProfileForbidden) ToJSONString() string {
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

func (o *PublicGetProfileForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetProfileNotFound creates a PublicGetProfileNotFound with default headers values
func NewPublicGetProfileNotFound() *PublicGetProfileNotFound {
	return &PublicGetProfileNotFound{}
}

/*PublicGetProfileNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12041</td><td>Game profile with id [{profileId}] is not found</td></tr></table>
*/
type PublicGetProfileNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetProfileNotFound) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicGetProfileNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetProfileNotFound) ToJSONString() string {
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

func (o *PublicGetProfileNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetProfileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetProfileInternalServerError creates a PublicGetProfileInternalServerError with default headers values
func NewPublicGetProfileInternalServerError() *PublicGetProfileInternalServerError {
	return &PublicGetProfileInternalServerError{}
}

/*PublicGetProfileInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicGetProfileInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetProfileInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicGetProfileInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetProfileInternalServerError) ToJSONString() string {
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

func (o *PublicGetProfileInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetProfileInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
