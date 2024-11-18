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

// UpdateAppResourcesResourceLimitFormV2Reader is a Reader for the UpdateAppResourcesResourceLimitFormV2 structure.
type UpdateAppResourcesResourceLimitFormV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateAppResourcesResourceLimitFormV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateAppResourcesResourceLimitFormV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateAppResourcesResourceLimitFormV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateAppResourcesResourceLimitFormV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateAppResourcesResourceLimitFormV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateAppResourcesResourceLimitFormV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateAppResourcesResourceLimitFormV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateAppResourcesResourceLimitFormV2NoContent creates a UpdateAppResourcesResourceLimitFormV2NoContent with default headers values
func NewUpdateAppResourcesResourceLimitFormV2NoContent() *UpdateAppResourcesResourceLimitFormV2NoContent {
	return &UpdateAppResourcesResourceLimitFormV2NoContent{}
}

/*UpdateAppResourcesResourceLimitFormV2NoContent handles this case with default header values.

  No Content
*/
type UpdateAppResourcesResourceLimitFormV2NoContent struct {
}

func (o *UpdateAppResourcesResourceLimitFormV2NoContent) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form][%d] updateAppResourcesResourceLimitFormV2NoContent ", 204)
}

func (o *UpdateAppResourcesResourceLimitFormV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateAppResourcesResourceLimitFormV2BadRequest creates a UpdateAppResourcesResourceLimitFormV2BadRequest with default headers values
func NewUpdateAppResourcesResourceLimitFormV2BadRequest() *UpdateAppResourcesResourceLimitFormV2BadRequest {
	return &UpdateAppResourcesResourceLimitFormV2BadRequest{}
}

/*UpdateAppResourcesResourceLimitFormV2BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateAppResourcesResourceLimitFormV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppResourcesResourceLimitFormV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form][%d] updateAppResourcesResourceLimitFormV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateAppResourcesResourceLimitFormV2BadRequest) ToJSONString() string {
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

func (o *UpdateAppResourcesResourceLimitFormV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppResourcesResourceLimitFormV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppResourcesResourceLimitFormV2Unauthorized creates a UpdateAppResourcesResourceLimitFormV2Unauthorized with default headers values
func NewUpdateAppResourcesResourceLimitFormV2Unauthorized() *UpdateAppResourcesResourceLimitFormV2Unauthorized {
	return &UpdateAppResourcesResourceLimitFormV2Unauthorized{}
}

/*UpdateAppResourcesResourceLimitFormV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateAppResourcesResourceLimitFormV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppResourcesResourceLimitFormV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form][%d] updateAppResourcesResourceLimitFormV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateAppResourcesResourceLimitFormV2Unauthorized) ToJSONString() string {
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

func (o *UpdateAppResourcesResourceLimitFormV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppResourcesResourceLimitFormV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppResourcesResourceLimitFormV2Forbidden creates a UpdateAppResourcesResourceLimitFormV2Forbidden with default headers values
func NewUpdateAppResourcesResourceLimitFormV2Forbidden() *UpdateAppResourcesResourceLimitFormV2Forbidden {
	return &UpdateAppResourcesResourceLimitFormV2Forbidden{}
}

/*UpdateAppResourcesResourceLimitFormV2Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateAppResourcesResourceLimitFormV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppResourcesResourceLimitFormV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form][%d] updateAppResourcesResourceLimitFormV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateAppResourcesResourceLimitFormV2Forbidden) ToJSONString() string {
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

func (o *UpdateAppResourcesResourceLimitFormV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppResourcesResourceLimitFormV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppResourcesResourceLimitFormV2NotFound creates a UpdateAppResourcesResourceLimitFormV2NotFound with default headers values
func NewUpdateAppResourcesResourceLimitFormV2NotFound() *UpdateAppResourcesResourceLimitFormV2NotFound {
	return &UpdateAppResourcesResourceLimitFormV2NotFound{}
}

/*UpdateAppResourcesResourceLimitFormV2NotFound handles this case with default header values.

  Not Found
*/
type UpdateAppResourcesResourceLimitFormV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppResourcesResourceLimitFormV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form][%d] updateAppResourcesResourceLimitFormV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateAppResourcesResourceLimitFormV2NotFound) ToJSONString() string {
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

func (o *UpdateAppResourcesResourceLimitFormV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppResourcesResourceLimitFormV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppResourcesResourceLimitFormV2InternalServerError creates a UpdateAppResourcesResourceLimitFormV2InternalServerError with default headers values
func NewUpdateAppResourcesResourceLimitFormV2InternalServerError() *UpdateAppResourcesResourceLimitFormV2InternalServerError {
	return &UpdateAppResourcesResourceLimitFormV2InternalServerError{}
}

/*UpdateAppResourcesResourceLimitFormV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateAppResourcesResourceLimitFormV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppResourcesResourceLimitFormV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form][%d] updateAppResourcesResourceLimitFormV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateAppResourcesResourceLimitFormV2InternalServerError) ToJSONString() string {
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

func (o *UpdateAppResourcesResourceLimitFormV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppResourcesResourceLimitFormV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
