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

// CreateStatReader is a Reader for the CreateStat structure.
type CreateStatReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateStatReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateStatCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateStatBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateStatUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateStatForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateStatNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateStatConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreateStatUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateStatInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/admin/namespaces/{namespace}/stats returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateStatCreated creates a CreateStatCreated with default headers values
func NewCreateStatCreated() *CreateStatCreated {
	return &CreateStatCreated{}
}

/*CreateStatCreated handles this case with default header values.

  Create stat successfully
*/
type CreateStatCreated struct {
	Payload *socialclientmodels.StatInfo
}

func (o *CreateStatCreated) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateStatCreated) ToJSONString() string {
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

func (o *CreateStatCreated) GetPayload() *socialclientmodels.StatInfo {
	return o.Payload
}

func (o *CreateStatCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateStatBadRequest creates a CreateStatBadRequest with default headers values
func NewCreateStatBadRequest() *CreateStatBadRequest {
	return &CreateStatBadRequest{}
}

/*CreateStatBadRequest handles this case with default header values.

  Bad request
*/
type CreateStatBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStatBadRequest) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateStatBadRequest) ToJSONString() string {
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

func (o *CreateStatBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStatBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateStatUnauthorized creates a CreateStatUnauthorized with default headers values
func NewCreateStatUnauthorized() *CreateStatUnauthorized {
	return &CreateStatUnauthorized{}
}

/*CreateStatUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type CreateStatUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStatUnauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateStatUnauthorized) ToJSONString() string {
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

func (o *CreateStatUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStatUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateStatForbidden creates a CreateStatForbidden with default headers values
func NewCreateStatForbidden() *CreateStatForbidden {
	return &CreateStatForbidden{}
}

/*CreateStatForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type CreateStatForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStatForbidden) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateStatForbidden) ToJSONString() string {
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

func (o *CreateStatForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStatForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateStatNotFound creates a CreateStatNotFound with default headers values
func NewCreateStatNotFound() *CreateStatNotFound {
	return &CreateStatNotFound{}
}

/*CreateStatNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type CreateStatNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStatNotFound) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateStatNotFound) ToJSONString() string {
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

func (o *CreateStatNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStatNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateStatConflict creates a CreateStatConflict with default headers values
func NewCreateStatConflict() *CreateStatConflict {
	return &CreateStatConflict{}
}

/*CreateStatConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12271</td><td>Stat template with code [{statCode}] already exists in namespace [{namespace}]</td></tr></table>
*/
type CreateStatConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStatConflict) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateStatConflict) ToJSONString() string {
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

func (o *CreateStatConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStatConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateStatUnprocessableEntity creates a CreateStatUnprocessableEntity with default headers values
func NewCreateStatUnprocessableEntity() *CreateStatUnprocessableEntity {
	return &CreateStatUnprocessableEntity{}
}

/*CreateStatUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateStatUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *CreateStatUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreateStatUnprocessableEntity) ToJSONString() string {
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

func (o *CreateStatUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateStatUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateStatInternalServerError creates a CreateStatInternalServerError with default headers values
func NewCreateStatInternalServerError() *CreateStatInternalServerError {
	return &CreateStatInternalServerError{}
}

/*CreateStatInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type CreateStatInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStatInternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateStatInternalServerError) ToJSONString() string {
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

func (o *CreateStatInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStatInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
