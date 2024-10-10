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

// ResetUserStatItemValueReader is a Reader for the ResetUserStatItemValue structure.
type ResetUserStatItemValueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ResetUserStatItemValueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewResetUserStatItemValueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewResetUserStatItemValueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewResetUserStatItemValueUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewResetUserStatItemValueForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewResetUserStatItemValueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewResetUserStatItemValueUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewResetUserStatItemValueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewResetUserStatItemValueOK creates a ResetUserStatItemValueOK with default headers values
func NewResetUserStatItemValueOK() *ResetUserStatItemValueOK {
	return &ResetUserStatItemValueOK{}
}

/*ResetUserStatItemValueOK handles this case with default header values.

  successful operation
*/
type ResetUserStatItemValueOK struct {
	Payload *socialclientmodels.StatItemIncResult
}

func (o *ResetUserStatItemValueOK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset][%d] resetUserStatItemValueOK  %+v", 200, o.ToJSONString())
}

func (o *ResetUserStatItemValueOK) ToJSONString() string {
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

func (o *ResetUserStatItemValueOK) GetPayload() *socialclientmodels.StatItemIncResult {
	return o.Payload
}

func (o *ResetUserStatItemValueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewResetUserStatItemValueBadRequest creates a ResetUserStatItemValueBadRequest with default headers values
func NewResetUserStatItemValueBadRequest() *ResetUserStatItemValueBadRequest {
	return &ResetUserStatItemValueBadRequest{}
}

/*ResetUserStatItemValueBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>12221</td><td>Invalid stat operator, expect [{expected}] but actual [{actual}]</td></tr></table>
*/
type ResetUserStatItemValueBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ResetUserStatItemValueBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset][%d] resetUserStatItemValueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ResetUserStatItemValueBadRequest) ToJSONString() string {
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

func (o *ResetUserStatItemValueBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ResetUserStatItemValueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewResetUserStatItemValueUnauthorized creates a ResetUserStatItemValueUnauthorized with default headers values
func NewResetUserStatItemValueUnauthorized() *ResetUserStatItemValueUnauthorized {
	return &ResetUserStatItemValueUnauthorized{}
}

/*ResetUserStatItemValueUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type ResetUserStatItemValueUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ResetUserStatItemValueUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset][%d] resetUserStatItemValueUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ResetUserStatItemValueUnauthorized) ToJSONString() string {
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

func (o *ResetUserStatItemValueUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ResetUserStatItemValueUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewResetUserStatItemValueForbidden creates a ResetUserStatItemValueForbidden with default headers values
func NewResetUserStatItemValueForbidden() *ResetUserStatItemValueForbidden {
	return &ResetUserStatItemValueForbidden{}
}

/*ResetUserStatItemValueForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type ResetUserStatItemValueForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ResetUserStatItemValueForbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset][%d] resetUserStatItemValueForbidden  %+v", 403, o.ToJSONString())
}

func (o *ResetUserStatItemValueForbidden) ToJSONString() string {
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

func (o *ResetUserStatItemValueForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ResetUserStatItemValueForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewResetUserStatItemValueNotFound creates a ResetUserStatItemValueNotFound with default headers values
func NewResetUserStatItemValueNotFound() *ResetUserStatItemValueNotFound {
	return &ResetUserStatItemValueNotFound{}
}

/*ResetUserStatItemValueNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type ResetUserStatItemValueNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ResetUserStatItemValueNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset][%d] resetUserStatItemValueNotFound  %+v", 404, o.ToJSONString())
}

func (o *ResetUserStatItemValueNotFound) ToJSONString() string {
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

func (o *ResetUserStatItemValueNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ResetUserStatItemValueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewResetUserStatItemValueUnprocessableEntity creates a ResetUserStatItemValueUnprocessableEntity with default headers values
func NewResetUserStatItemValueUnprocessableEntity() *ResetUserStatItemValueUnprocessableEntity {
	return &ResetUserStatItemValueUnprocessableEntity{}
}

/*ResetUserStatItemValueUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type ResetUserStatItemValueUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *ResetUserStatItemValueUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset][%d] resetUserStatItemValueUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *ResetUserStatItemValueUnprocessableEntity) ToJSONString() string {
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

func (o *ResetUserStatItemValueUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *ResetUserStatItemValueUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewResetUserStatItemValueInternalServerError creates a ResetUserStatItemValueInternalServerError with default headers values
func NewResetUserStatItemValueInternalServerError() *ResetUserStatItemValueInternalServerError {
	return &ResetUserStatItemValueInternalServerError{}
}

/*ResetUserStatItemValueInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type ResetUserStatItemValueInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ResetUserStatItemValueInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset][%d] resetUserStatItemValueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ResetUserStatItemValueInternalServerError) ToJSONString() string {
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

func (o *ResetUserStatItemValueInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ResetUserStatItemValueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
