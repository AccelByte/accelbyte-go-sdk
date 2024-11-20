// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

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

// UpdateStatReader is a Reader for the UpdateStat structure.
type UpdateStatReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateStatReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateStatOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateStatBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateStatUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateStatForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateStatNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateStatUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateStatInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /social/v1/admin/namespaces/{namespace}/stats/{statCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateStatOK creates a UpdateStatOK with default headers values
func NewUpdateStatOK() *UpdateStatOK {
	return &UpdateStatOK{}
}

/*UpdateStatOK handles this case with default header values.

  successful update of stat
*/
type UpdateStatOK struct {
	Payload *socialclientmodels.StatInfo
}

func (o *UpdateStatOK) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/stats/{statCode}][%d] updateStatOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateStatOK) ToJSONString() string {
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

func (o *UpdateStatOK) GetPayload() *socialclientmodels.StatInfo {
	return o.Payload
}

func (o *UpdateStatOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateStatBadRequest creates a UpdateStatBadRequest with default headers values
func NewUpdateStatBadRequest() *UpdateStatBadRequest {
	return &UpdateStatBadRequest{}
}

/*UpdateStatBadRequest handles this case with default header values.

  Bad request
*/
type UpdateStatBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/stats/{statCode}][%d] updateStatBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateStatBadRequest) ToJSONString() string {
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

func (o *UpdateStatBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatUnauthorized creates a UpdateStatUnauthorized with default headers values
func NewUpdateStatUnauthorized() *UpdateStatUnauthorized {
	return &UpdateStatUnauthorized{}
}

/*UpdateStatUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type UpdateStatUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/stats/{statCode}][%d] updateStatUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateStatUnauthorized) ToJSONString() string {
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

func (o *UpdateStatUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatForbidden creates a UpdateStatForbidden with default headers values
func NewUpdateStatForbidden() *UpdateStatForbidden {
	return &UpdateStatForbidden{}
}

/*UpdateStatForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateStatForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatForbidden) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/stats/{statCode}][%d] updateStatForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateStatForbidden) ToJSONString() string {
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

func (o *UpdateStatForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatNotFound creates a UpdateStatNotFound with default headers values
func NewUpdateStatNotFound() *UpdateStatNotFound {
	return &UpdateStatNotFound{}
}

/*UpdateStatNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type UpdateStatNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatNotFound) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/stats/{statCode}][%d] updateStatNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateStatNotFound) ToJSONString() string {
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

func (o *UpdateStatNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatUnprocessableEntity creates a UpdateStatUnprocessableEntity with default headers values
func NewUpdateStatUnprocessableEntity() *UpdateStatUnprocessableEntity {
	return &UpdateStatUnprocessableEntity{}
}

/*UpdateStatUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateStatUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *UpdateStatUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/stats/{statCode}][%d] updateStatUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateStatUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateStatUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateStatUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatInternalServerError creates a UpdateStatInternalServerError with default headers values
func NewUpdateStatInternalServerError() *UpdateStatInternalServerError {
	return &UpdateStatInternalServerError{}
}

/*UpdateStatInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type UpdateStatInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/admin/namespaces/{namespace}/stats/{statCode}][%d] updateStatInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateStatInternalServerError) ToJSONString() string {
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

func (o *UpdateStatInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
