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

// IncUserStatItemValueReader is a Reader for the IncUserStatItemValue structure.
type IncUserStatItemValueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *IncUserStatItemValueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewIncUserStatItemValueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewIncUserStatItemValueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewIncUserStatItemValueUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewIncUserStatItemValueForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewIncUserStatItemValueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewIncUserStatItemValueConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewIncUserStatItemValueUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewIncUserStatItemValueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value returns an error %d: %s", response.Code(), string(data))
	}
}

// NewIncUserStatItemValueOK creates a IncUserStatItemValueOK with default headers values
func NewIncUserStatItemValueOK() *IncUserStatItemValueOK {
	return &IncUserStatItemValueOK{}
}

/*IncUserStatItemValueOK handles this case with default header values.

  successful operation
*/
type IncUserStatItemValueOK struct {
	Payload *socialclientmodels.StatItemIncResult
}

func (o *IncUserStatItemValueOK) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] incUserStatItemValueOK  %+v", 200, o.ToJSONString())
}

func (o *IncUserStatItemValueOK) ToJSONString() string {
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

func (o *IncUserStatItemValueOK) GetPayload() *socialclientmodels.StatItemIncResult {
	return o.Payload
}

func (o *IncUserStatItemValueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIncUserStatItemValueBadRequest creates a IncUserStatItemValueBadRequest with default headers values
func NewIncUserStatItemValueBadRequest() *IncUserStatItemValueBadRequest {
	return &IncUserStatItemValueBadRequest{}
}

/*IncUserStatItemValueBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12221</td><td>Invalid stat operator, expect [{expected}] but actual [{actual}]</td></tr></table>
*/
type IncUserStatItemValueBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *IncUserStatItemValueBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] incUserStatItemValueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *IncUserStatItemValueBadRequest) ToJSONString() string {
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

func (o *IncUserStatItemValueBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *IncUserStatItemValueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIncUserStatItemValueUnauthorized creates a IncUserStatItemValueUnauthorized with default headers values
func NewIncUserStatItemValueUnauthorized() *IncUserStatItemValueUnauthorized {
	return &IncUserStatItemValueUnauthorized{}
}

/*IncUserStatItemValueUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type IncUserStatItemValueUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *IncUserStatItemValueUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] incUserStatItemValueUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *IncUserStatItemValueUnauthorized) ToJSONString() string {
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

func (o *IncUserStatItemValueUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *IncUserStatItemValueUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIncUserStatItemValueForbidden creates a IncUserStatItemValueForbidden with default headers values
func NewIncUserStatItemValueForbidden() *IncUserStatItemValueForbidden {
	return &IncUserStatItemValueForbidden{}
}

/*IncUserStatItemValueForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type IncUserStatItemValueForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *IncUserStatItemValueForbidden) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] incUserStatItemValueForbidden  %+v", 403, o.ToJSONString())
}

func (o *IncUserStatItemValueForbidden) ToJSONString() string {
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

func (o *IncUserStatItemValueForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *IncUserStatItemValueForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIncUserStatItemValueNotFound creates a IncUserStatItemValueNotFound with default headers values
func NewIncUserStatItemValueNotFound() *IncUserStatItemValueNotFound {
	return &IncUserStatItemValueNotFound{}
}

/*IncUserStatItemValueNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr><tr><td>12242</td><td>Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type IncUserStatItemValueNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *IncUserStatItemValueNotFound) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] incUserStatItemValueNotFound  %+v", 404, o.ToJSONString())
}

func (o *IncUserStatItemValueNotFound) ToJSONString() string {
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

func (o *IncUserStatItemValueNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *IncUserStatItemValueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIncUserStatItemValueConflict creates a IncUserStatItemValueConflict with default headers values
func NewIncUserStatItemValueConflict() *IncUserStatItemValueConflict {
	return &IncUserStatItemValueConflict{}
}

/*IncUserStatItemValueConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12273</td><td>Stat [{statCode}] is not decreasable</td></tr><tr><td>12275</td><td>[{action}] value: [{value}] of stat [{statCode}]  is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}]</td></tr></table>
*/
type IncUserStatItemValueConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *IncUserStatItemValueConflict) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] incUserStatItemValueConflict  %+v", 409, o.ToJSONString())
}

func (o *IncUserStatItemValueConflict) ToJSONString() string {
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

func (o *IncUserStatItemValueConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *IncUserStatItemValueConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIncUserStatItemValueUnprocessableEntity creates a IncUserStatItemValueUnprocessableEntity with default headers values
func NewIncUserStatItemValueUnprocessableEntity() *IncUserStatItemValueUnprocessableEntity {
	return &IncUserStatItemValueUnprocessableEntity{}
}

/*IncUserStatItemValueUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type IncUserStatItemValueUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *IncUserStatItemValueUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] incUserStatItemValueUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *IncUserStatItemValueUnprocessableEntity) ToJSONString() string {
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

func (o *IncUserStatItemValueUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *IncUserStatItemValueUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIncUserStatItemValueInternalServerError creates a IncUserStatItemValueInternalServerError with default headers values
func NewIncUserStatItemValueInternalServerError() *IncUserStatItemValueInternalServerError {
	return &IncUserStatItemValueInternalServerError{}
}

/*IncUserStatItemValueInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type IncUserStatItemValueInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *IncUserStatItemValueInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] incUserStatItemValueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *IncUserStatItemValueInternalServerError) ToJSONString() string {
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

func (o *IncUserStatItemValueInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *IncUserStatItemValueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
