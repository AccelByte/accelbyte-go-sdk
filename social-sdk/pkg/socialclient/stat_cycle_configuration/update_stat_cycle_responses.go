// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

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

// UpdateStatCycleReader is a Reader for the UpdateStatCycle structure.
type UpdateStatCycleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateStatCycleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateStatCycleOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateStatCycleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateStatCycleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateStatCycleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateStatCycleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateStatCycleConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateStatCycleUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateStatCycleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateStatCycleOK creates a UpdateStatCycleOK with default headers values
func NewUpdateStatCycleOK() *UpdateStatCycleOK {
	return &UpdateStatCycleOK{}
}

/*UpdateStatCycleOK handles this case with default header values.

  successful operation
*/
type UpdateStatCycleOK struct {
	Payload *socialclientmodels.StatCycleInfo
}

func (o *UpdateStatCycleOK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] updateStatCycleOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateStatCycleOK) ToJSONString() string {
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

func (o *UpdateStatCycleOK) GetPayload() *socialclientmodels.StatCycleInfo {
	return o.Payload
}

func (o *UpdateStatCycleOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatCycleInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateStatCycleBadRequest creates a UpdateStatCycleBadRequest with default headers values
func NewUpdateStatCycleBadRequest() *UpdateStatCycleBadRequest {
	return &UpdateStatCycleBadRequest{}
}

/*UpdateStatCycleBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12225</td><td>Invalid time range</td></tr><tr><td>12226</td><td>Invalid date [{date}] of month [{month}]</td></tr></table>
*/
type UpdateStatCycleBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatCycleBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] updateStatCycleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateStatCycleBadRequest) ToJSONString() string {
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

func (o *UpdateStatCycleBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatCycleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatCycleUnauthorized creates a UpdateStatCycleUnauthorized with default headers values
func NewUpdateStatCycleUnauthorized() *UpdateStatCycleUnauthorized {
	return &UpdateStatCycleUnauthorized{}
}

/*UpdateStatCycleUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type UpdateStatCycleUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatCycleUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] updateStatCycleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateStatCycleUnauthorized) ToJSONString() string {
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

func (o *UpdateStatCycleUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatCycleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatCycleForbidden creates a UpdateStatCycleForbidden with default headers values
func NewUpdateStatCycleForbidden() *UpdateStatCycleForbidden {
	return &UpdateStatCycleForbidden{}
}

/*UpdateStatCycleForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateStatCycleForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatCycleForbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] updateStatCycleForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateStatCycleForbidden) ToJSONString() string {
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

func (o *UpdateStatCycleForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatCycleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatCycleNotFound creates a UpdateStatCycleNotFound with default headers values
func NewUpdateStatCycleNotFound() *UpdateStatCycleNotFound {
	return &UpdateStatCycleNotFound{}
}

/*UpdateStatCycleNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type UpdateStatCycleNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatCycleNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] updateStatCycleNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateStatCycleNotFound) ToJSONString() string {
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

func (o *UpdateStatCycleNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatCycleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatCycleConflict creates a UpdateStatCycleConflict with default headers values
func NewUpdateStatCycleConflict() *UpdateStatCycleConflict {
	return &UpdateStatCycleConflict{}
}

/*UpdateStatCycleConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12277</td><td>Stat cycle [{id}] in namespace [{namespace}] with status [{status}] cannot be updated</td></tr></table>
*/
type UpdateStatCycleConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatCycleConflict) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] updateStatCycleConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateStatCycleConflict) ToJSONString() string {
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

func (o *UpdateStatCycleConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatCycleConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatCycleUnprocessableEntity creates a UpdateStatCycleUnprocessableEntity with default headers values
func NewUpdateStatCycleUnprocessableEntity() *UpdateStatCycleUnprocessableEntity {
	return &UpdateStatCycleUnprocessableEntity{}
}

/*UpdateStatCycleUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateStatCycleUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *UpdateStatCycleUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] updateStatCycleUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateStatCycleUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateStatCycleUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateStatCycleUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStatCycleInternalServerError creates a UpdateStatCycleInternalServerError with default headers values
func NewUpdateStatCycleInternalServerError() *UpdateStatCycleInternalServerError {
	return &UpdateStatCycleInternalServerError{}
}

/*UpdateStatCycleInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type UpdateStatCycleInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateStatCycleInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] updateStatCycleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateStatCycleInternalServerError) ToJSONString() string {
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

func (o *UpdateStatCycleInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStatCycleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
