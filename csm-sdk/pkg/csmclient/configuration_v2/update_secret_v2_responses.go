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

// UpdateSecretV2Reader is a Reader for the UpdateSecretV2 structure.
type UpdateSecretV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateSecretV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateSecretV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateSecretV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateSecretV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateSecretV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateSecretV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateSecretV2OK creates a UpdateSecretV2OK with default headers values
func NewUpdateSecretV2OK() *UpdateSecretV2OK {
	return &UpdateSecretV2OK{}
}

/*UpdateSecretV2OK handles this case with default header values.

  OK
*/
type UpdateSecretV2OK struct {
	Payload *csmclientmodels.ApimodelUpdateConfigurationV2Response
}

func (o *UpdateSecretV2OK) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] updateSecretV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateSecretV2OK) ToJSONString() string {
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

func (o *UpdateSecretV2OK) GetPayload() *csmclientmodels.ApimodelUpdateConfigurationV2Response {
	return o.Payload
}

func (o *UpdateSecretV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelUpdateConfigurationV2Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSecretV2BadRequest creates a UpdateSecretV2BadRequest with default headers values
func NewUpdateSecretV2BadRequest() *UpdateSecretV2BadRequest {
	return &UpdateSecretV2BadRequest{}
}

/*UpdateSecretV2BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateSecretV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateSecretV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] updateSecretV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateSecretV2BadRequest) ToJSONString() string {
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

func (o *UpdateSecretV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSecretV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSecretV2Unauthorized creates a UpdateSecretV2Unauthorized with default headers values
func NewUpdateSecretV2Unauthorized() *UpdateSecretV2Unauthorized {
	return &UpdateSecretV2Unauthorized{}
}

/*UpdateSecretV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateSecretV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateSecretV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] updateSecretV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateSecretV2Unauthorized) ToJSONString() string {
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

func (o *UpdateSecretV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSecretV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSecretV2Forbidden creates a UpdateSecretV2Forbidden with default headers values
func NewUpdateSecretV2Forbidden() *UpdateSecretV2Forbidden {
	return &UpdateSecretV2Forbidden{}
}

/*UpdateSecretV2Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateSecretV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateSecretV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] updateSecretV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateSecretV2Forbidden) ToJSONString() string {
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

func (o *UpdateSecretV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSecretV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSecretV2InternalServerError creates a UpdateSecretV2InternalServerError with default headers values
func NewUpdateSecretV2InternalServerError() *UpdateSecretV2InternalServerError {
	return &UpdateSecretV2InternalServerError{}
}

/*UpdateSecretV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateSecretV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateSecretV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] updateSecretV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateSecretV2InternalServerError) ToJSONString() string {
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

func (o *UpdateSecretV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSecretV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
