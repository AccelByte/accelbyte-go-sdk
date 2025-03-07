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

// DeleteUserStatItems1Reader is a Reader for the DeleteUserStatItems1 structure.
type DeleteUserStatItems1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserStatItems1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserStatItems1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserStatItems1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserStatItems1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserStatItems1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewDeleteUserStatItems1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserStatItems1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserStatItems1NoContent creates a DeleteUserStatItems1NoContent with default headers values
func NewDeleteUserStatItems1NoContent() *DeleteUserStatItems1NoContent {
	return &DeleteUserStatItems1NoContent{}
}

/*DeleteUserStatItems1NoContent handles this case with default header values.

  delete successfully
*/
type DeleteUserStatItems1NoContent struct {
}

func (o *DeleteUserStatItems1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItems1NoContent ", 204)
}

func (o *DeleteUserStatItems1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserStatItems1Unauthorized creates a DeleteUserStatItems1Unauthorized with default headers values
func NewDeleteUserStatItems1Unauthorized() *DeleteUserStatItems1Unauthorized {
	return &DeleteUserStatItems1Unauthorized{}
}

/*DeleteUserStatItems1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteUserStatItems1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItems1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItems1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserStatItems1Unauthorized) ToJSONString() string {
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

func (o *DeleteUserStatItems1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItems1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserStatItems1Forbidden creates a DeleteUserStatItems1Forbidden with default headers values
func NewDeleteUserStatItems1Forbidden() *DeleteUserStatItems1Forbidden {
	return &DeleteUserStatItems1Forbidden{}
}

/*DeleteUserStatItems1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteUserStatItems1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItems1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItems1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserStatItems1Forbidden) ToJSONString() string {
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

func (o *DeleteUserStatItems1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItems1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserStatItems1NotFound creates a DeleteUserStatItems1NotFound with default headers values
func NewDeleteUserStatItems1NotFound() *DeleteUserStatItems1NotFound {
	return &DeleteUserStatItems1NotFound{}
}

/*DeleteUserStatItems1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12242</td><td>Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type DeleteUserStatItems1NotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItems1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItems1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserStatItems1NotFound) ToJSONString() string {
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

func (o *DeleteUserStatItems1NotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItems1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserStatItems1UnprocessableEntity creates a DeleteUserStatItems1UnprocessableEntity with default headers values
func NewDeleteUserStatItems1UnprocessableEntity() *DeleteUserStatItems1UnprocessableEntity {
	return &DeleteUserStatItems1UnprocessableEntity{}
}

/*DeleteUserStatItems1UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteUserStatItems1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *DeleteUserStatItems1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItems1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *DeleteUserStatItems1UnprocessableEntity) ToJSONString() string {
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

func (o *DeleteUserStatItems1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItems1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserStatItems1InternalServerError creates a DeleteUserStatItems1InternalServerError with default headers values
func NewDeleteUserStatItems1InternalServerError() *DeleteUserStatItems1InternalServerError {
	return &DeleteUserStatItems1InternalServerError{}
}

/*DeleteUserStatItems1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type DeleteUserStatItems1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItems1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItems1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteUserStatItems1InternalServerError) ToJSONString() string {
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

func (o *DeleteUserStatItems1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItems1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
