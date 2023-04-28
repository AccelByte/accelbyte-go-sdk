// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// CreateConfigReader is a Reader for the CreateConfig structure.
type CreateConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateConfigCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/namespaces/{namespace}/configs returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateConfigCreated creates a CreateConfigCreated with default headers values
func NewCreateConfigCreated() *CreateConfigCreated {
	return &CreateConfigCreated{}
}

/*CreateConfigCreated handles this case with default header values.

  config created
*/
type CreateConfigCreated struct {
	Payload *dsmcclientmodels.ModelsDSMConfigRecord
}

func (o *CreateConfigCreated) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs][%d] createConfigCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateConfigCreated) ToJSONString() string {
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

func (o *CreateConfigCreated) GetPayload() *dsmcclientmodels.ModelsDSMConfigRecord {
	return o.Payload
}

func (o *CreateConfigCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsDSMConfigRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateConfigBadRequest creates a CreateConfigBadRequest with default headers values
func NewCreateConfigBadRequest() *CreateConfigBadRequest {
	return &CreateConfigBadRequest{}
}

/*CreateConfigBadRequest handles this case with default header values.

  malformed request
*/
type CreateConfigBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateConfigBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs][%d] createConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateConfigBadRequest) ToJSONString() string {
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

func (o *CreateConfigBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateConfigUnauthorized creates a CreateConfigUnauthorized with default headers values
func NewCreateConfigUnauthorized() *CreateConfigUnauthorized {
	return &CreateConfigUnauthorized{}
}

/*CreateConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateConfigUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateConfigUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs][%d] createConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateConfigUnauthorized) ToJSONString() string {
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

func (o *CreateConfigUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateConfigConflict creates a CreateConfigConflict with default headers values
func NewCreateConfigConflict() *CreateConfigConflict {
	return &CreateConfigConflict{}
}

/*CreateConfigConflict handles this case with default header values.

  Conflict
*/
type CreateConfigConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateConfigConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs][%d] createConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateConfigConflict) ToJSONString() string {
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

func (o *CreateConfigConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateConfigInternalServerError creates a CreateConfigInternalServerError with default headers values
func NewCreateConfigInternalServerError() *CreateConfigInternalServerError {
	return &CreateConfigInternalServerError{}
}

/*CreateConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateConfigInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateConfigInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs][%d] createConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateConfigInternalServerError) ToJSONString() string {
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

func (o *CreateConfigInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
