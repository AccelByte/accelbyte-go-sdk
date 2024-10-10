// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

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

// PublicCreateUserStatItemReader is a Reader for the PublicCreateUserStatItem structure.
type PublicCreateUserStatItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCreateUserStatItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicCreateUserStatItemCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicCreateUserStatItemUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicCreateUserStatItemForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicCreateUserStatItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicCreateUserStatItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicCreateUserStatItemUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicCreateUserStatItemInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCreateUserStatItemCreated creates a PublicCreateUserStatItemCreated with default headers values
func NewPublicCreateUserStatItemCreated() *PublicCreateUserStatItemCreated {
	return &PublicCreateUserStatItemCreated{}
}

/*PublicCreateUserStatItemCreated handles this case with default header values.

  Create user statItem successfully
*/
type PublicCreateUserStatItemCreated struct {
}

func (o *PublicCreateUserStatItemCreated) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] publicCreateUserStatItemCreated ", 201)
}

func (o *PublicCreateUserStatItemCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicCreateUserStatItemUnauthorized creates a PublicCreateUserStatItemUnauthorized with default headers values
func NewPublicCreateUserStatItemUnauthorized() *PublicCreateUserStatItemUnauthorized {
	return &PublicCreateUserStatItemUnauthorized{}
}

/*PublicCreateUserStatItemUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicCreateUserStatItemUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateUserStatItemUnauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] publicCreateUserStatItemUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicCreateUserStatItemUnauthorized) ToJSONString() string {
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

func (o *PublicCreateUserStatItemUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserStatItemUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateUserStatItemForbidden creates a PublicCreateUserStatItemForbidden with default headers values
func NewPublicCreateUserStatItemForbidden() *PublicCreateUserStatItemForbidden {
	return &PublicCreateUserStatItemForbidden{}
}

/*PublicCreateUserStatItemForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicCreateUserStatItemForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateUserStatItemForbidden) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] publicCreateUserStatItemForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicCreateUserStatItemForbidden) ToJSONString() string {
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

func (o *PublicCreateUserStatItemForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserStatItemForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateUserStatItemNotFound creates a PublicCreateUserStatItemNotFound with default headers values
func NewPublicCreateUserStatItemNotFound() *PublicCreateUserStatItemNotFound {
	return &PublicCreateUserStatItemNotFound{}
}

/*PublicCreateUserStatItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type PublicCreateUserStatItemNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateUserStatItemNotFound) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] publicCreateUserStatItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicCreateUserStatItemNotFound) ToJSONString() string {
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

func (o *PublicCreateUserStatItemNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserStatItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateUserStatItemConflict creates a PublicCreateUserStatItemConflict with default headers values
func NewPublicCreateUserStatItemConflict() *PublicCreateUserStatItemConflict {
	return &PublicCreateUserStatItemConflict{}
}

/*PublicCreateUserStatItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12274</td><td>Stat item with code [{statCode}] of user [{profileId}] already exists in namespace [{namespace}]</td></tr></table>
*/
type PublicCreateUserStatItemConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateUserStatItemConflict) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] publicCreateUserStatItemConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicCreateUserStatItemConflict) ToJSONString() string {
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

func (o *PublicCreateUserStatItemConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserStatItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateUserStatItemUnprocessableEntity creates a PublicCreateUserStatItemUnprocessableEntity with default headers values
func NewPublicCreateUserStatItemUnprocessableEntity() *PublicCreateUserStatItemUnprocessableEntity {
	return &PublicCreateUserStatItemUnprocessableEntity{}
}

/*PublicCreateUserStatItemUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicCreateUserStatItemUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicCreateUserStatItemUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] publicCreateUserStatItemUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicCreateUserStatItemUnprocessableEntity) ToJSONString() string {
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

func (o *PublicCreateUserStatItemUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserStatItemUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateUserStatItemInternalServerError creates a PublicCreateUserStatItemInternalServerError with default headers values
func NewPublicCreateUserStatItemInternalServerError() *PublicCreateUserStatItemInternalServerError {
	return &PublicCreateUserStatItemInternalServerError{}
}

/*PublicCreateUserStatItemInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicCreateUserStatItemInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateUserStatItemInternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] publicCreateUserStatItemInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicCreateUserStatItemInternalServerError) ToJSONString() string {
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

func (o *PublicCreateUserStatItemInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserStatItemInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
