// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_v2

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

// UpdateAppV2Reader is a Reader for the UpdateAppV2 structure.
type UpdateAppV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateAppV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateAppV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateAppV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateAppV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateAppV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateAppV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateAppV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateAppV2OK creates a UpdateAppV2OK with default headers values
func NewUpdateAppV2OK() *UpdateAppV2OK {
	return &UpdateAppV2OK{}
}

/*UpdateAppV2OK handles this case with default header values.

  OK
*/
type UpdateAppV2OK struct {
	Payload *csmclientmodels.ApimodelAppItem
}

func (o *UpdateAppV2OK) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateAppV2OK) ToJSONString() string {
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

func (o *UpdateAppV2OK) GetPayload() *csmclientmodels.ApimodelAppItem {
	return o.Payload
}

func (o *UpdateAppV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelAppItem)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateAppV2BadRequest creates a UpdateAppV2BadRequest with default headers values
func NewUpdateAppV2BadRequest() *UpdateAppV2BadRequest {
	return &UpdateAppV2BadRequest{}
}

/*UpdateAppV2BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateAppV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateAppV2BadRequest) ToJSONString() string {
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

func (o *UpdateAppV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppV2Unauthorized creates a UpdateAppV2Unauthorized with default headers values
func NewUpdateAppV2Unauthorized() *UpdateAppV2Unauthorized {
	return &UpdateAppV2Unauthorized{}
}

/*UpdateAppV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateAppV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateAppV2Unauthorized) ToJSONString() string {
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

func (o *UpdateAppV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppV2Forbidden creates a UpdateAppV2Forbidden with default headers values
func NewUpdateAppV2Forbidden() *UpdateAppV2Forbidden {
	return &UpdateAppV2Forbidden{}
}

/*UpdateAppV2Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateAppV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppV2Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateAppV2Forbidden) ToJSONString() string {
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

func (o *UpdateAppV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppV2NotFound creates a UpdateAppV2NotFound with default headers values
func NewUpdateAppV2NotFound() *UpdateAppV2NotFound {
	return &UpdateAppV2NotFound{}
}

/*UpdateAppV2NotFound handles this case with default header values.

  Not Found
*/
type UpdateAppV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateAppV2NotFound) ToJSONString() string {
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

func (o *UpdateAppV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppV2InternalServerError creates a UpdateAppV2InternalServerError with default headers values
func NewUpdateAppV2InternalServerError() *UpdateAppV2InternalServerError {
	return &UpdateAppV2InternalServerError{}
}

/*UpdateAppV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateAppV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateAppV2InternalServerError) ToJSONString() string {
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

func (o *UpdateAppV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
