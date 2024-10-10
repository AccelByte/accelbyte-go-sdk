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

// PublicUpdateProfileReader is a Reader for the PublicUpdateProfile structure.
type PublicUpdateProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateProfileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateProfileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateProfileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicUpdateProfileUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateProfileInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateProfileOK creates a PublicUpdateProfileOK with default headers values
func NewPublicUpdateProfileOK() *PublicUpdateProfileOK {
	return &PublicUpdateProfileOK{}
}

/*PublicUpdateProfileOK handles this case with default header values.

  successful operation
*/
type PublicUpdateProfileOK struct {
	Payload *socialclientmodels.GameProfileInfo
}

func (o *PublicUpdateProfileOK) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicUpdateProfileOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateProfileOK) ToJSONString() string {
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

func (o *PublicUpdateProfileOK) GetPayload() *socialclientmodels.GameProfileInfo {
	return o.Payload
}

func (o *PublicUpdateProfileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateProfileBadRequest creates a PublicUpdateProfileBadRequest with default headers values
func NewPublicUpdateProfileBadRequest() *PublicUpdateProfileBadRequest {
	return &PublicUpdateProfileBadRequest{}
}

/*PublicUpdateProfileBadRequest handles this case with default header values.

  Bad request
*/
type PublicUpdateProfileBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateProfileBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicUpdateProfileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateProfileBadRequest) ToJSONString() string {
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

func (o *PublicUpdateProfileBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateProfileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateProfileUnauthorized creates a PublicUpdateProfileUnauthorized with default headers values
func NewPublicUpdateProfileUnauthorized() *PublicUpdateProfileUnauthorized {
	return &PublicUpdateProfileUnauthorized{}
}

/*PublicUpdateProfileUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicUpdateProfileUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateProfileUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicUpdateProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateProfileUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateProfileUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateProfileForbidden creates a PublicUpdateProfileForbidden with default headers values
func NewPublicUpdateProfileForbidden() *PublicUpdateProfileForbidden {
	return &PublicUpdateProfileForbidden{}
}

/*PublicUpdateProfileForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicUpdateProfileForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateProfileForbidden) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicUpdateProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateProfileForbidden) ToJSONString() string {
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

func (o *PublicUpdateProfileForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateProfileNotFound creates a PublicUpdateProfileNotFound with default headers values
func NewPublicUpdateProfileNotFound() *PublicUpdateProfileNotFound {
	return &PublicUpdateProfileNotFound{}
}

/*PublicUpdateProfileNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12041</td><td>Game profile with id [{profileId}] is not found</td></tr></table>
*/
type PublicUpdateProfileNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateProfileNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicUpdateProfileNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateProfileNotFound) ToJSONString() string {
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

func (o *PublicUpdateProfileNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateProfileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateProfileUnprocessableEntity creates a PublicUpdateProfileUnprocessableEntity with default headers values
func NewPublicUpdateProfileUnprocessableEntity() *PublicUpdateProfileUnprocessableEntity {
	return &PublicUpdateProfileUnprocessableEntity{}
}

/*PublicUpdateProfileUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicUpdateProfileUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicUpdateProfileUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicUpdateProfileUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicUpdateProfileUnprocessableEntity) ToJSONString() string {
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

func (o *PublicUpdateProfileUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicUpdateProfileUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateProfileInternalServerError creates a PublicUpdateProfileInternalServerError with default headers values
func NewPublicUpdateProfileInternalServerError() *PublicUpdateProfileInternalServerError {
	return &PublicUpdateProfileInternalServerError{}
}

/*PublicUpdateProfileInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicUpdateProfileInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateProfileInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicUpdateProfileInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateProfileInternalServerError) ToJSONString() string {
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

func (o *PublicUpdateProfileInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateProfileInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
