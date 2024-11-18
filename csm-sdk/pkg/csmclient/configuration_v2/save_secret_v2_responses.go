// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_v2

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

// SaveSecretV2Reader is a Reader for the SaveSecretV2 structure.
type SaveSecretV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SaveSecretV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSaveSecretV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSaveSecretV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSaveSecretV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSaveSecretV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSaveSecretV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSaveSecretV2OK creates a SaveSecretV2OK with default headers values
func NewSaveSecretV2OK() *SaveSecretV2OK {
	return &SaveSecretV2OK{}
}

/*SaveSecretV2OK handles this case with default header values.

  OK
*/
type SaveSecretV2OK struct {
	Payload *csmclientmodels.ApimodelSaveConfigurationV2Response
}

func (o *SaveSecretV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] saveSecretV2OK  %+v", 200, o.ToJSONString())
}

func (o *SaveSecretV2OK) ToJSONString() string {
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

func (o *SaveSecretV2OK) GetPayload() *csmclientmodels.ApimodelSaveConfigurationV2Response {
	return o.Payload
}

func (o *SaveSecretV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelSaveConfigurationV2Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSaveSecretV2BadRequest creates a SaveSecretV2BadRequest with default headers values
func NewSaveSecretV2BadRequest() *SaveSecretV2BadRequest {
	return &SaveSecretV2BadRequest{}
}

/*SaveSecretV2BadRequest handles this case with default header values.

  Bad Request
*/
type SaveSecretV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveSecretV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] saveSecretV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SaveSecretV2BadRequest) ToJSONString() string {
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

func (o *SaveSecretV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveSecretV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveSecretV2Unauthorized creates a SaveSecretV2Unauthorized with default headers values
func NewSaveSecretV2Unauthorized() *SaveSecretV2Unauthorized {
	return &SaveSecretV2Unauthorized{}
}

/*SaveSecretV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type SaveSecretV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveSecretV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] saveSecretV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SaveSecretV2Unauthorized) ToJSONString() string {
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

func (o *SaveSecretV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveSecretV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveSecretV2Forbidden creates a SaveSecretV2Forbidden with default headers values
func NewSaveSecretV2Forbidden() *SaveSecretV2Forbidden {
	return &SaveSecretV2Forbidden{}
}

/*SaveSecretV2Forbidden handles this case with default header values.

  Forbidden
*/
type SaveSecretV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveSecretV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] saveSecretV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *SaveSecretV2Forbidden) ToJSONString() string {
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

func (o *SaveSecretV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveSecretV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveSecretV2InternalServerError creates a SaveSecretV2InternalServerError with default headers values
func NewSaveSecretV2InternalServerError() *SaveSecretV2InternalServerError {
	return &SaveSecretV2InternalServerError{}
}

/*SaveSecretV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type SaveSecretV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SaveSecretV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] saveSecretV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SaveSecretV2InternalServerError) ToJSONString() string {
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

func (o *SaveSecretV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SaveSecretV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
