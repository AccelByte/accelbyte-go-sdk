// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pass

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// CreatePassReader is a Reader for the CreatePass structure.
type CreatePassReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreatePassReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreatePassCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreatePassBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreatePassNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreatePassConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreatePassUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreatePassCreated creates a CreatePassCreated with default headers values
func NewCreatePassCreated() *CreatePassCreated {
	return &CreatePassCreated{}
}

/*CreatePassCreated handles this case with default header values.

  successful operation
*/
type CreatePassCreated struct {
	Payload *seasonpassclientmodels.PassInfo
}

func (o *CreatePassCreated) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes][%d] createPassCreated  %+v", 201, o.ToJSONString())
}

func (o *CreatePassCreated) ToJSONString() string {
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

func (o *CreatePassCreated) GetPayload() *seasonpassclientmodels.PassInfo {
	return o.Payload
}

func (o *CreatePassCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.PassInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreatePassBadRequest creates a CreatePassBadRequest with default headers values
func NewCreatePassBadRequest() *CreatePassBadRequest {
	return &CreatePassBadRequest{}
}

/*CreatePassBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr><tr><td>49121</td><td>Default language [{language}] required in localizations</td></tr></table>
*/
type CreatePassBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CreatePassBadRequest) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes][%d] createPassBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreatePassBadRequest) ToJSONString() string {
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

func (o *CreatePassBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePassBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreatePassNotFound creates a CreatePassNotFound with default headers values
func NewCreatePassNotFound() *CreatePassNotFound {
	return &CreatePassNotFound{}
}

/*CreatePassNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>49142</td><td>Pass item does not exist in the store of namespace [{namespace}]</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type CreatePassNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CreatePassNotFound) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes][%d] createPassNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreatePassNotFound) ToJSONString() string {
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

func (o *CreatePassNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePassNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreatePassConflict creates a CreatePassConflict with default headers values
func NewCreatePassConflict() *CreatePassConflict {
	return &CreatePassConflict{}
}

/*CreatePassConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Invalid season status [{status}]</td></tr><tr><td>49174</td><td>Pass [{code}] already exists in the season</td></tr></table>
*/
type CreatePassConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CreatePassConflict) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes][%d] createPassConflict  %+v", 409, o.ToJSONString())
}

func (o *CreatePassConflict) ToJSONString() string {
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

func (o *CreatePassConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePassConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreatePassUnprocessableEntity creates a CreatePassUnprocessableEntity with default headers values
func NewCreatePassUnprocessableEntity() *CreatePassUnprocessableEntity {
	return &CreatePassUnprocessableEntity{}
}

/*CreatePassUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreatePassUnprocessableEntity struct {
	Payload *seasonpassclientmodels.ValidationErrorEntity
}

func (o *CreatePassUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes][%d] createPassUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreatePassUnprocessableEntity) ToJSONString() string {
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

func (o *CreatePassUnprocessableEntity) GetPayload() *seasonpassclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreatePassUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
