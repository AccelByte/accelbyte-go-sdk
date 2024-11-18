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

// SaveSecretV1Reader is a Reader for the SaveSecretV1 structure.
type SaveSecretV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SaveSecretV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSaveSecretV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSaveSecretV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSaveSecretV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSaveSecretV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSaveSecretV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSaveSecretV1OK creates a SaveSecretV1OK with default headers values
func NewSaveSecretV1OK() *SaveSecretV1OK {
	return &SaveSecretV1OK{}
}

/*SaveSecretV1OK handles this case with default header values.

  OK
*/
type SaveSecretV1OK struct {
	Payload *csmclientmodels.GeneratedSaveConfigurationV1Response
}

func (o *SaveSecretV1OK) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] saveSecretV1OK  %+v", 200, o.ToJSONString())
}

func (o *SaveSecretV1OK) ToJSONString() string {
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

func (o *SaveSecretV1OK) GetPayload() *csmclientmodels.GeneratedSaveConfigurationV1Response {
	return o.Payload
}

func (o *SaveSecretV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveSecretV1BadRequest creates a SaveSecretV1BadRequest with default headers values
func NewSaveSecretV1BadRequest() *SaveSecretV1BadRequest {
	return &SaveSecretV1BadRequest{}
}

/*SaveSecretV1BadRequest handles this case with default header values.

  Bad Request
*/
type SaveSecretV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveSecretV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] saveSecretV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SaveSecretV1BadRequest) ToJSONString() string {
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

func (o *SaveSecretV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveSecretV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveSecretV1Unauthorized creates a SaveSecretV1Unauthorized with default headers values
func NewSaveSecretV1Unauthorized() *SaveSecretV1Unauthorized {
	return &SaveSecretV1Unauthorized{}
}

/*SaveSecretV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type SaveSecretV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveSecretV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] saveSecretV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SaveSecretV1Unauthorized) ToJSONString() string {
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

func (o *SaveSecretV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveSecretV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveSecretV1Forbidden creates a SaveSecretV1Forbidden with default headers values
func NewSaveSecretV1Forbidden() *SaveSecretV1Forbidden {
	return &SaveSecretV1Forbidden{}
}

/*SaveSecretV1Forbidden handles this case with default header values.

  Forbidden
*/
type SaveSecretV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveSecretV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] saveSecretV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *SaveSecretV1Forbidden) ToJSONString() string {
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

func (o *SaveSecretV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveSecretV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveSecretV1InternalServerError creates a SaveSecretV1InternalServerError with default headers values
func NewSaveSecretV1InternalServerError() *SaveSecretV1InternalServerError {
	return &SaveSecretV1InternalServerError{}
}

/*SaveSecretV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type SaveSecretV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveSecretV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] saveSecretV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SaveSecretV1InternalServerError) ToJSONString() string {
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

func (o *SaveSecretV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveSecretV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
