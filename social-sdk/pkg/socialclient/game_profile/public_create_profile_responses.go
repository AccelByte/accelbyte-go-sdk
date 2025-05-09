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

// PublicCreateProfileReader is a Reader for the PublicCreateProfile structure.
type PublicCreateProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCreateProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicCreateProfileCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicCreateProfileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicCreateProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicCreateProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicCreateProfileUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicCreateProfileInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/public/namespaces/{namespace}/users/{userId}/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCreateProfileCreated creates a PublicCreateProfileCreated with default headers values
func NewPublicCreateProfileCreated() *PublicCreateProfileCreated {
	return &PublicCreateProfileCreated{}
}

/*PublicCreateProfileCreated handles this case with default header values.

  Profile has been created
*/
type PublicCreateProfileCreated struct {
}

func (o *PublicCreateProfileCreated) Error() string {
	return fmt.Sprintf("[POST /social/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateProfileCreated ", 201)
}

func (o *PublicCreateProfileCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicCreateProfileBadRequest creates a PublicCreateProfileBadRequest with default headers values
func NewPublicCreateProfileBadRequest() *PublicCreateProfileBadRequest {
	return &PublicCreateProfileBadRequest{}
}

/*PublicCreateProfileBadRequest handles this case with default header values.

  Bad request
*/
type PublicCreateProfileBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateProfileBadRequest) Error() string {
	return fmt.Sprintf("[POST /social/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateProfileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicCreateProfileBadRequest) ToJSONString() string {
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

func (o *PublicCreateProfileBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateProfileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateProfileUnauthorized creates a PublicCreateProfileUnauthorized with default headers values
func NewPublicCreateProfileUnauthorized() *PublicCreateProfileUnauthorized {
	return &PublicCreateProfileUnauthorized{}
}

/*PublicCreateProfileUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicCreateProfileUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateProfileUnauthorized) Error() string {
	return fmt.Sprintf("[POST /social/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicCreateProfileUnauthorized) ToJSONString() string {
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

func (o *PublicCreateProfileUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateProfileForbidden creates a PublicCreateProfileForbidden with default headers values
func NewPublicCreateProfileForbidden() *PublicCreateProfileForbidden {
	return &PublicCreateProfileForbidden{}
}

/*PublicCreateProfileForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicCreateProfileForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateProfileForbidden) Error() string {
	return fmt.Sprintf("[POST /social/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicCreateProfileForbidden) ToJSONString() string {
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

func (o *PublicCreateProfileForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateProfileUnprocessableEntity creates a PublicCreateProfileUnprocessableEntity with default headers values
func NewPublicCreateProfileUnprocessableEntity() *PublicCreateProfileUnprocessableEntity {
	return &PublicCreateProfileUnprocessableEntity{}
}

/*PublicCreateProfileUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicCreateProfileUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicCreateProfileUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateProfileUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicCreateProfileUnprocessableEntity) ToJSONString() string {
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

func (o *PublicCreateProfileUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicCreateProfileUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCreateProfileInternalServerError creates a PublicCreateProfileInternalServerError with default headers values
func NewPublicCreateProfileInternalServerError() *PublicCreateProfileInternalServerError {
	return &PublicCreateProfileInternalServerError{}
}

/*PublicCreateProfileInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicCreateProfileInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateProfileInternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateProfileInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicCreateProfileInternalServerError) ToJSONString() string {
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

func (o *PublicCreateProfileInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateProfileInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
