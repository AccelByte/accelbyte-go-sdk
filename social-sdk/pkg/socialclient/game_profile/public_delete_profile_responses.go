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

// PublicDeleteProfileReader is a Reader for the PublicDeleteProfile structure.
type PublicDeleteProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDeleteProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicDeleteProfileNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDeleteProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicDeleteProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDeleteProfileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDeleteProfileInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDeleteProfileNoContent creates a PublicDeleteProfileNoContent with default headers values
func NewPublicDeleteProfileNoContent() *PublicDeleteProfileNoContent {
	return &PublicDeleteProfileNoContent{}
}

/*PublicDeleteProfileNoContent handles this case with default header values.

  Game profile has been deleted
*/
type PublicDeleteProfileNoContent struct {
}

func (o *PublicDeleteProfileNoContent) Error() string {
	return fmt.Sprintf("[DELETE /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicDeleteProfileNoContent ", 204)
}

func (o *PublicDeleteProfileNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDeleteProfileUnauthorized creates a PublicDeleteProfileUnauthorized with default headers values
func NewPublicDeleteProfileUnauthorized() *PublicDeleteProfileUnauthorized {
	return &PublicDeleteProfileUnauthorized{}
}

/*PublicDeleteProfileUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicDeleteProfileUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicDeleteProfileUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicDeleteProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDeleteProfileUnauthorized) ToJSONString() string {
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

func (o *PublicDeleteProfileUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicDeleteProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeleteProfileForbidden creates a PublicDeleteProfileForbidden with default headers values
func NewPublicDeleteProfileForbidden() *PublicDeleteProfileForbidden {
	return &PublicDeleteProfileForbidden{}
}

/*PublicDeleteProfileForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicDeleteProfileForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicDeleteProfileForbidden) Error() string {
	return fmt.Sprintf("[DELETE /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicDeleteProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicDeleteProfileForbidden) ToJSONString() string {
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

func (o *PublicDeleteProfileForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicDeleteProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeleteProfileNotFound creates a PublicDeleteProfileNotFound with default headers values
func NewPublicDeleteProfileNotFound() *PublicDeleteProfileNotFound {
	return &PublicDeleteProfileNotFound{}
}

/*PublicDeleteProfileNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12041</td><td>Game profile with id [{profileId}] is not found</td></tr></table>
*/
type PublicDeleteProfileNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicDeleteProfileNotFound) Error() string {
	return fmt.Sprintf("[DELETE /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicDeleteProfileNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDeleteProfileNotFound) ToJSONString() string {
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

func (o *PublicDeleteProfileNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicDeleteProfileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeleteProfileInternalServerError creates a PublicDeleteProfileInternalServerError with default headers values
func NewPublicDeleteProfileInternalServerError() *PublicDeleteProfileInternalServerError {
	return &PublicDeleteProfileInternalServerError{}
}

/*PublicDeleteProfileInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicDeleteProfileInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicDeleteProfileInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicDeleteProfileInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDeleteProfileInternalServerError) ToJSONString() string {
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

func (o *PublicDeleteProfileInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicDeleteProfileInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
