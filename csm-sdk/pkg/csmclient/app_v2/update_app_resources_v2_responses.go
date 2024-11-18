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

// UpdateAppResourcesV2Reader is a Reader for the UpdateAppResourcesV2 structure.
type UpdateAppResourcesV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateAppResourcesV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateAppResourcesV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateAppResourcesV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateAppResourcesV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateAppResourcesV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateAppResourcesV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateAppResourcesV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateAppResourcesV2OK creates a UpdateAppResourcesV2OK with default headers values
func NewUpdateAppResourcesV2OK() *UpdateAppResourcesV2OK {
	return &UpdateAppResourcesV2OK{}
}

/*UpdateAppResourcesV2OK handles this case with default header values.

  OK
*/
type UpdateAppResourcesV2OK struct {
	Payload *csmclientmodels.ApimodelAppItem
}

func (o *UpdateAppResourcesV2OK) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources][%d] updateAppResourcesV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateAppResourcesV2OK) ToJSONString() string {
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

func (o *UpdateAppResourcesV2OK) GetPayload() *csmclientmodels.ApimodelAppItem {
	return o.Payload
}

func (o *UpdateAppResourcesV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppResourcesV2BadRequest creates a UpdateAppResourcesV2BadRequest with default headers values
func NewUpdateAppResourcesV2BadRequest() *UpdateAppResourcesV2BadRequest {
	return &UpdateAppResourcesV2BadRequest{}
}

/*UpdateAppResourcesV2BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateAppResourcesV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppResourcesV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources][%d] updateAppResourcesV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateAppResourcesV2BadRequest) ToJSONString() string {
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

func (o *UpdateAppResourcesV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppResourcesV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppResourcesV2Unauthorized creates a UpdateAppResourcesV2Unauthorized with default headers values
func NewUpdateAppResourcesV2Unauthorized() *UpdateAppResourcesV2Unauthorized {
	return &UpdateAppResourcesV2Unauthorized{}
}

/*UpdateAppResourcesV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateAppResourcesV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppResourcesV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources][%d] updateAppResourcesV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateAppResourcesV2Unauthorized) ToJSONString() string {
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

func (o *UpdateAppResourcesV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppResourcesV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppResourcesV2Forbidden creates a UpdateAppResourcesV2Forbidden with default headers values
func NewUpdateAppResourcesV2Forbidden() *UpdateAppResourcesV2Forbidden {
	return &UpdateAppResourcesV2Forbidden{}
}

/*UpdateAppResourcesV2Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateAppResourcesV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppResourcesV2Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources][%d] updateAppResourcesV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateAppResourcesV2Forbidden) ToJSONString() string {
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

func (o *UpdateAppResourcesV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppResourcesV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppResourcesV2NotFound creates a UpdateAppResourcesV2NotFound with default headers values
func NewUpdateAppResourcesV2NotFound() *UpdateAppResourcesV2NotFound {
	return &UpdateAppResourcesV2NotFound{}
}

/*UpdateAppResourcesV2NotFound handles this case with default header values.

  Not Found
*/
type UpdateAppResourcesV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppResourcesV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources][%d] updateAppResourcesV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateAppResourcesV2NotFound) ToJSONString() string {
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

func (o *UpdateAppResourcesV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppResourcesV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppResourcesV2InternalServerError creates a UpdateAppResourcesV2InternalServerError with default headers values
func NewUpdateAppResourcesV2InternalServerError() *UpdateAppResourcesV2InternalServerError {
	return &UpdateAppResourcesV2InternalServerError{}
}

/*UpdateAppResourcesV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateAppResourcesV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppResourcesV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources][%d] updateAppResourcesV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateAppResourcesV2InternalServerError) ToJSONString() string {
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

func (o *UpdateAppResourcesV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppResourcesV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
