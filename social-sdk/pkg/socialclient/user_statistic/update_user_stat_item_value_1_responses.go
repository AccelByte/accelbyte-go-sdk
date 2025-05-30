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

// UpdateUserStatItemValue1Reader is a Reader for the UpdateUserStatItemValue1 structure.
type UpdateUserStatItemValue1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateUserStatItemValue1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateUserStatItemValue1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateUserStatItemValue1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateUserStatItemValue1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateUserStatItemValue1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateUserStatItemValue1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateUserStatItemValue1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateUserStatItemValue1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateUserStatItemValue1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateUserStatItemValue1OK creates a UpdateUserStatItemValue1OK with default headers values
func NewUpdateUserStatItemValue1OK() *UpdateUserStatItemValue1OK {
	return &UpdateUserStatItemValue1OK{}
}

/*UpdateUserStatItemValue1OK handles this case with default header values.

  successful operation
*/
type UpdateUserStatItemValue1OK struct {
	Payload *socialclientmodels.StatItemIncResult
}

func (o *UpdateUserStatItemValue1OK) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValue1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateUserStatItemValue1OK) ToJSONString() string {
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

func (o *UpdateUserStatItemValue1OK) GetPayload() *socialclientmodels.StatItemIncResult {
	return o.Payload
}

func (o *UpdateUserStatItemValue1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatItemIncResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserStatItemValue1BadRequest creates a UpdateUserStatItemValue1BadRequest with default headers values
func NewUpdateUserStatItemValue1BadRequest() *UpdateUserStatItemValue1BadRequest {
	return &UpdateUserStatItemValue1BadRequest{}
}

/*UpdateUserStatItemValue1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>12221</td><td>Invalid stat operator, expect [{expected}] but actual [{actual}]</td></tr></table>
*/
type UpdateUserStatItemValue1BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateUserStatItemValue1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValue1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateUserStatItemValue1BadRequest) ToJSONString() string {
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

func (o *UpdateUserStatItemValue1BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValue1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserStatItemValue1Unauthorized creates a UpdateUserStatItemValue1Unauthorized with default headers values
func NewUpdateUserStatItemValue1Unauthorized() *UpdateUserStatItemValue1Unauthorized {
	return &UpdateUserStatItemValue1Unauthorized{}
}

/*UpdateUserStatItemValue1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateUserStatItemValue1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateUserStatItemValue1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValue1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateUserStatItemValue1Unauthorized) ToJSONString() string {
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

func (o *UpdateUserStatItemValue1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValue1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserStatItemValue1Forbidden creates a UpdateUserStatItemValue1Forbidden with default headers values
func NewUpdateUserStatItemValue1Forbidden() *UpdateUserStatItemValue1Forbidden {
	return &UpdateUserStatItemValue1Forbidden{}
}

/*UpdateUserStatItemValue1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateUserStatItemValue1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateUserStatItemValue1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValue1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateUserStatItemValue1Forbidden) ToJSONString() string {
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

func (o *UpdateUserStatItemValue1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValue1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserStatItemValue1NotFound creates a UpdateUserStatItemValue1NotFound with default headers values
func NewUpdateUserStatItemValue1NotFound() *UpdateUserStatItemValue1NotFound {
	return &UpdateUserStatItemValue1NotFound{}
}

/*UpdateUserStatItemValue1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type UpdateUserStatItemValue1NotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateUserStatItemValue1NotFound) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValue1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateUserStatItemValue1NotFound) ToJSONString() string {
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

func (o *UpdateUserStatItemValue1NotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValue1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserStatItemValue1Conflict creates a UpdateUserStatItemValue1Conflict with default headers values
func NewUpdateUserStatItemValue1Conflict() *UpdateUserStatItemValue1Conflict {
	return &UpdateUserStatItemValue1Conflict{}
}

/*UpdateUserStatItemValue1Conflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12273</td><td>Stat [{statCode}] is not decreasable</td></tr><tr><td>12275</td><td>[{action}] value: [{value}] of stat [{statCode}] is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}]</td></tr></table>
*/
type UpdateUserStatItemValue1Conflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateUserStatItemValue1Conflict) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValue1Conflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateUserStatItemValue1Conflict) ToJSONString() string {
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

func (o *UpdateUserStatItemValue1Conflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValue1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserStatItemValue1UnprocessableEntity creates a UpdateUserStatItemValue1UnprocessableEntity with default headers values
func NewUpdateUserStatItemValue1UnprocessableEntity() *UpdateUserStatItemValue1UnprocessableEntity {
	return &UpdateUserStatItemValue1UnprocessableEntity{}
}

/*UpdateUserStatItemValue1UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateUserStatItemValue1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *UpdateUserStatItemValue1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValue1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateUserStatItemValue1UnprocessableEntity) ToJSONString() string {
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

func (o *UpdateUserStatItemValue1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValue1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserStatItemValue1InternalServerError creates a UpdateUserStatItemValue1InternalServerError with default headers values
func NewUpdateUserStatItemValue1InternalServerError() *UpdateUserStatItemValue1InternalServerError {
	return &UpdateUserStatItemValue1InternalServerError{}
}

/*UpdateUserStatItemValue1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type UpdateUserStatItemValue1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateUserStatItemValue1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValue1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateUserStatItemValue1InternalServerError) ToJSONString() string {
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

func (o *UpdateUserStatItemValue1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValue1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
