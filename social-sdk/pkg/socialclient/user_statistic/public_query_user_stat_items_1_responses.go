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

// PublicQueryUserStatItems1Reader is a Reader for the PublicQueryUserStatItems1 structure.
type PublicQueryUserStatItems1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicQueryUserStatItems1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicQueryUserStatItems1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicQueryUserStatItems1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicQueryUserStatItems1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicQueryUserStatItems1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicQueryUserStatItems1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicQueryUserStatItems1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicQueryUserStatItems1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicQueryUserStatItems1OK creates a PublicQueryUserStatItems1OK with default headers values
func NewPublicQueryUserStatItems1OK() *PublicQueryUserStatItems1OK {
	return &PublicQueryUserStatItems1OK{}
}

/*PublicQueryUserStatItems1OK handles this case with default header values.

  successful operation
*/
type PublicQueryUserStatItems1OK struct {
	Payload []*socialclientmodels.ADTOObjectForUserStatItemValue
}

func (o *PublicQueryUserStatItems1OK) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems1OK  %+v", 200, o.ToJSONString())
}

func (o *PublicQueryUserStatItems1OK) ToJSONString() string {
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

func (o *PublicQueryUserStatItems1OK) GetPayload() []*socialclientmodels.ADTOObjectForUserStatItemValue {
	return o.Payload
}

func (o *PublicQueryUserStatItems1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryUserStatItems1BadRequest creates a PublicQueryUserStatItems1BadRequest with default headers values
func NewPublicQueryUserStatItems1BadRequest() *PublicQueryUserStatItems1BadRequest {
	return &PublicQueryUserStatItems1BadRequest{}
}

/*PublicQueryUserStatItems1BadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12223</td><td>Invalid stat codes in namespace [{namespace}]: [{statCodes}]</td></tr></table>
*/
type PublicQueryUserStatItems1BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicQueryUserStatItems1BadRequest) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicQueryUserStatItems1BadRequest) ToJSONString() string {
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

func (o *PublicQueryUserStatItems1BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItems1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryUserStatItems1Unauthorized creates a PublicQueryUserStatItems1Unauthorized with default headers values
func NewPublicQueryUserStatItems1Unauthorized() *PublicQueryUserStatItems1Unauthorized {
	return &PublicQueryUserStatItems1Unauthorized{}
}

/*PublicQueryUserStatItems1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicQueryUserStatItems1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicQueryUserStatItems1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicQueryUserStatItems1Unauthorized) ToJSONString() string {
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

func (o *PublicQueryUserStatItems1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItems1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryUserStatItems1Forbidden creates a PublicQueryUserStatItems1Forbidden with default headers values
func NewPublicQueryUserStatItems1Forbidden() *PublicQueryUserStatItems1Forbidden {
	return &PublicQueryUserStatItems1Forbidden{}
}

/*PublicQueryUserStatItems1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicQueryUserStatItems1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicQueryUserStatItems1Forbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicQueryUserStatItems1Forbidden) ToJSONString() string {
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

func (o *PublicQueryUserStatItems1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItems1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryUserStatItems1NotFound creates a PublicQueryUserStatItems1NotFound with default headers values
func NewPublicQueryUserStatItems1NotFound() *PublicQueryUserStatItems1NotFound {
	return &PublicQueryUserStatItems1NotFound{}
}

/*PublicQueryUserStatItems1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12243</td><td>Stats cannot be found in namespace [{namespace}]</td></tr></table>
*/
type PublicQueryUserStatItems1NotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicQueryUserStatItems1NotFound) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicQueryUserStatItems1NotFound) ToJSONString() string {
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

func (o *PublicQueryUserStatItems1NotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItems1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryUserStatItems1UnprocessableEntity creates a PublicQueryUserStatItems1UnprocessableEntity with default headers values
func NewPublicQueryUserStatItems1UnprocessableEntity() *PublicQueryUserStatItems1UnprocessableEntity {
	return &PublicQueryUserStatItems1UnprocessableEntity{}
}

/*PublicQueryUserStatItems1UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicQueryUserStatItems1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicQueryUserStatItems1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicQueryUserStatItems1UnprocessableEntity) ToJSONString() string {
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

func (o *PublicQueryUserStatItems1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItems1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicQueryUserStatItems1InternalServerError creates a PublicQueryUserStatItems1InternalServerError with default headers values
func NewPublicQueryUserStatItems1InternalServerError() *PublicQueryUserStatItems1InternalServerError {
	return &PublicQueryUserStatItems1InternalServerError{}
}

/*PublicQueryUserStatItems1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicQueryUserStatItems1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicQueryUserStatItems1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicQueryUserStatItems1InternalServerError) ToJSONString() string {
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

func (o *PublicQueryUserStatItems1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItems1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
