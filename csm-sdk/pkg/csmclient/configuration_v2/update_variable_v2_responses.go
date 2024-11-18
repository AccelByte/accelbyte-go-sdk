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

// UpdateVariableV2Reader is a Reader for the UpdateVariableV2 structure.
type UpdateVariableV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateVariableV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateVariableV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateVariableV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateVariableV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateVariableV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateVariableV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateVariableV2OK creates a UpdateVariableV2OK with default headers values
func NewUpdateVariableV2OK() *UpdateVariableV2OK {
	return &UpdateVariableV2OK{}
}

/*UpdateVariableV2OK handles this case with default header values.

  OK
*/
type UpdateVariableV2OK struct {
	Payload *csmclientmodels.ApimodelUpdateConfigurationV2Response
}

func (o *UpdateVariableV2OK) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] updateVariableV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateVariableV2OK) ToJSONString() string {
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

func (o *UpdateVariableV2OK) GetPayload() *csmclientmodels.ApimodelUpdateConfigurationV2Response {
	return o.Payload
}

func (o *UpdateVariableV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateVariableV2BadRequest creates a UpdateVariableV2BadRequest with default headers values
func NewUpdateVariableV2BadRequest() *UpdateVariableV2BadRequest {
	return &UpdateVariableV2BadRequest{}
}

/*UpdateVariableV2BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateVariableV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateVariableV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] updateVariableV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateVariableV2BadRequest) ToJSONString() string {
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

func (o *UpdateVariableV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateVariableV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateVariableV2Unauthorized creates a UpdateVariableV2Unauthorized with default headers values
func NewUpdateVariableV2Unauthorized() *UpdateVariableV2Unauthorized {
	return &UpdateVariableV2Unauthorized{}
}

/*UpdateVariableV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateVariableV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateVariableV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] updateVariableV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateVariableV2Unauthorized) ToJSONString() string {
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

func (o *UpdateVariableV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateVariableV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateVariableV2Forbidden creates a UpdateVariableV2Forbidden with default headers values
func NewUpdateVariableV2Forbidden() *UpdateVariableV2Forbidden {
	return &UpdateVariableV2Forbidden{}
}

/*UpdateVariableV2Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateVariableV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateVariableV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] updateVariableV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateVariableV2Forbidden) ToJSONString() string {
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

func (o *UpdateVariableV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateVariableV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateVariableV2InternalServerError creates a UpdateVariableV2InternalServerError with default headers values
func NewUpdateVariableV2InternalServerError() *UpdateVariableV2InternalServerError {
	return &UpdateVariableV2InternalServerError{}
}

/*UpdateVariableV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateVariableV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateVariableV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] updateVariableV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateVariableV2InternalServerError) ToJSONString() string {
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

func (o *UpdateVariableV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateVariableV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
