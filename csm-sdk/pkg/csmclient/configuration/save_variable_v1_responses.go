// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

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

// SaveVariableV1Reader is a Reader for the SaveVariableV1 structure.
type SaveVariableV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SaveVariableV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSaveVariableV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSaveVariableV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSaveVariableV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSaveVariableV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSaveVariableV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSaveVariableV1OK creates a SaveVariableV1OK with default headers values
func NewSaveVariableV1OK() *SaveVariableV1OK {
	return &SaveVariableV1OK{}
}

/*SaveVariableV1OK handles this case with default header values.

  OK
*/
type SaveVariableV1OK struct {
	Payload *csmclientmodels.GeneratedSaveConfigurationV1Response
}

func (o *SaveVariableV1OK) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] saveVariableV1OK  %+v", 200, o.ToJSONString())
}

func (o *SaveVariableV1OK) ToJSONString() string {
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

func (o *SaveVariableV1OK) GetPayload() *csmclientmodels.GeneratedSaveConfigurationV1Response {
	return o.Payload
}

func (o *SaveVariableV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedSaveConfigurationV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSaveVariableV1BadRequest creates a SaveVariableV1BadRequest with default headers values
func NewSaveVariableV1BadRequest() *SaveVariableV1BadRequest {
	return &SaveVariableV1BadRequest{}
}

/*SaveVariableV1BadRequest handles this case with default header values.

  Bad Request
*/
type SaveVariableV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveVariableV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] saveVariableV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SaveVariableV1BadRequest) ToJSONString() string {
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

func (o *SaveVariableV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveVariableV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveVariableV1Unauthorized creates a SaveVariableV1Unauthorized with default headers values
func NewSaveVariableV1Unauthorized() *SaveVariableV1Unauthorized {
	return &SaveVariableV1Unauthorized{}
}

/*SaveVariableV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type SaveVariableV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveVariableV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] saveVariableV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SaveVariableV1Unauthorized) ToJSONString() string {
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

func (o *SaveVariableV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveVariableV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveVariableV1Forbidden creates a SaveVariableV1Forbidden with default headers values
func NewSaveVariableV1Forbidden() *SaveVariableV1Forbidden {
	return &SaveVariableV1Forbidden{}
}

/*SaveVariableV1Forbidden handles this case with default header values.

  Forbidden
*/
type SaveVariableV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveVariableV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] saveVariableV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *SaveVariableV1Forbidden) ToJSONString() string {
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

func (o *SaveVariableV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveVariableV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveVariableV1InternalServerError creates a SaveVariableV1InternalServerError with default headers values
func NewSaveVariableV1InternalServerError() *SaveVariableV1InternalServerError {
	return &SaveVariableV1InternalServerError{}
}

/*SaveVariableV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type SaveVariableV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveVariableV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] saveVariableV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SaveVariableV1InternalServerError) ToJSONString() string {
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

func (o *SaveVariableV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveVariableV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
