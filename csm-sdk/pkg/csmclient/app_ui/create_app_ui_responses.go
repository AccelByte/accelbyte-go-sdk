// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_ui

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// CreateAppUIReader is a Reader for the CreateAppUI structure.
type CreateAppUIReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateAppUIReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateAppUICreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateAppUIBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateAppUIConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateAppUIInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v1/admin/namespaces/{namespace}/app-ui returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateAppUICreated creates a CreateAppUICreated with default headers values
func NewCreateAppUICreated() *CreateAppUICreated {
	return &CreateAppUICreated{}
}

/*CreateAppUICreated handles this case with default header values.

  Created
*/
type CreateAppUICreated struct {
	Payload *csmclientmodels.ApimodelAppUIResponse
}

func (o *CreateAppUICreated) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/app-ui][%d] createAppUiCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateAppUICreated) ToJSONString() string {
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

func (o *CreateAppUICreated) GetPayload() *csmclientmodels.ApimodelAppUIResponse {
	return o.Payload
}

func (o *CreateAppUICreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelAppUIResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateAppUIBadRequest creates a CreateAppUIBadRequest with default headers values
func NewCreateAppUIBadRequest() *CreateAppUIBadRequest {
	return &CreateAppUIBadRequest{}
}

/*CreateAppUIBadRequest handles this case with default header values.

  Bad Request
*/
type CreateAppUIBadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppUIBadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/app-ui][%d] createAppUiBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateAppUIBadRequest) ToJSONString() string {
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

func (o *CreateAppUIBadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppUIBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateAppUIConflict creates a CreateAppUIConflict with default headers values
func NewCreateAppUIConflict() *CreateAppUIConflict {
	return &CreateAppUIConflict{}
}

/*CreateAppUIConflict handles this case with default header values.

  Conflict
*/
type CreateAppUIConflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppUIConflict) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/app-ui][%d] createAppUiConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateAppUIConflict) ToJSONString() string {
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

func (o *CreateAppUIConflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppUIConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateAppUIInternalServerError creates a CreateAppUIInternalServerError with default headers values
func NewCreateAppUIInternalServerError() *CreateAppUIInternalServerError {
	return &CreateAppUIInternalServerError{}
}

/*CreateAppUIInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateAppUIInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppUIInternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/app-ui][%d] createAppUiInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateAppUIInternalServerError) ToJSONString() string {
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

func (o *CreateAppUIInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppUIInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
