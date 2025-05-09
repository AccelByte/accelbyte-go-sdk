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

// CreateStat1Reader is a Reader for the CreateStat1 structure.
type CreateStat1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateStat1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateStat1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateStat1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateStat1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateStat1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateStat1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateStat1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreateStat1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateStat1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/public/namespaces/{namespace}/stats returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateStat1Created creates a CreateStat1Created with default headers values
func NewCreateStat1Created() *CreateStat1Created {
	return &CreateStat1Created{}
}

/*CreateStat1Created handles this case with default header values.

  Create stat successfully
*/
type CreateStat1Created struct {
	Payload *socialclientmodels.StatInfo
}

func (o *CreateStat1Created) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/stats][%d] createStat1Created  %+v", 201, o.ToJSONString())
}

func (o *CreateStat1Created) ToJSONString() string {
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

func (o *CreateStat1Created) GetPayload() *socialclientmodels.StatInfo {
	return o.Payload
}

func (o *CreateStat1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateStat1BadRequest creates a CreateStat1BadRequest with default headers values
func NewCreateStat1BadRequest() *CreateStat1BadRequest {
	return &CreateStat1BadRequest{}
}

/*CreateStat1BadRequest handles this case with default header values.

  Bad request
*/
type CreateStat1BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStat1BadRequest) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/stats][%d] createStat1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateStat1BadRequest) ToJSONString() string {
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

func (o *CreateStat1BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStat1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateStat1Unauthorized creates a CreateStat1Unauthorized with default headers values
func NewCreateStat1Unauthorized() *CreateStat1Unauthorized {
	return &CreateStat1Unauthorized{}
}

/*CreateStat1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type CreateStat1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStat1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/stats][%d] createStat1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateStat1Unauthorized) ToJSONString() string {
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

func (o *CreateStat1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStat1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateStat1Forbidden creates a CreateStat1Forbidden with default headers values
func NewCreateStat1Forbidden() *CreateStat1Forbidden {
	return &CreateStat1Forbidden{}
}

/*CreateStat1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type CreateStat1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStat1Forbidden) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/stats][%d] createStat1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateStat1Forbidden) ToJSONString() string {
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

func (o *CreateStat1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStat1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateStat1NotFound creates a CreateStat1NotFound with default headers values
func NewCreateStat1NotFound() *CreateStat1NotFound {
	return &CreateStat1NotFound{}
}

/*CreateStat1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type CreateStat1NotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStat1NotFound) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/stats][%d] createStat1NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateStat1NotFound) ToJSONString() string {
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

func (o *CreateStat1NotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStat1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateStat1Conflict creates a CreateStat1Conflict with default headers values
func NewCreateStat1Conflict() *CreateStat1Conflict {
	return &CreateStat1Conflict{}
}

/*CreateStat1Conflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12271</td><td>Stat template with code [{statCode}] already exists in namespace [{namespace}]</td></tr></table>
*/
type CreateStat1Conflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStat1Conflict) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/stats][%d] createStat1Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateStat1Conflict) ToJSONString() string {
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

func (o *CreateStat1Conflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStat1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateStat1UnprocessableEntity creates a CreateStat1UnprocessableEntity with default headers values
func NewCreateStat1UnprocessableEntity() *CreateStat1UnprocessableEntity {
	return &CreateStat1UnprocessableEntity{}
}

/*CreateStat1UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateStat1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *CreateStat1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/stats][%d] createStat1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreateStat1UnprocessableEntity) ToJSONString() string {
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

func (o *CreateStat1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateStat1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateStat1InternalServerError creates a CreateStat1InternalServerError with default headers values
func NewCreateStat1InternalServerError() *CreateStat1InternalServerError {
	return &CreateStat1InternalServerError{}
}

/*CreateStat1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type CreateStat1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStat1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/stats][%d] createStat1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateStat1InternalServerError) ToJSONString() string {
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

func (o *CreateStat1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStat1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
