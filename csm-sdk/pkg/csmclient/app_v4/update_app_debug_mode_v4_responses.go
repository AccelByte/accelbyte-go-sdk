// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_v4

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

// UpdateAppDebugModeV4Reader is a Reader for the UpdateAppDebugModeV4 structure.
type UpdateAppDebugModeV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateAppDebugModeV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateAppDebugModeV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateAppDebugModeV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateAppDebugModeV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateAppDebugModeV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateAppDebugModeV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateAppDebugModeV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateAppDebugModeV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v4/admin/namespaces/{namespace}/apps/{app}/debugmode returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateAppDebugModeV4OK creates a UpdateAppDebugModeV4OK with default headers values
func NewUpdateAppDebugModeV4OK() *UpdateAppDebugModeV4OK {
	return &UpdateAppDebugModeV4OK{}
}

/*UpdateAppDebugModeV4OK handles this case with default header values.

  OK
*/
type UpdateAppDebugModeV4OK struct {
	Payload *csmclientmodels.ApimodelAppItem
}

func (o *UpdateAppDebugModeV4OK) Error() string {
	return fmt.Sprintf("[PUT /csm/v4/admin/namespaces/{namespace}/apps/{app}/debugmode][%d] updateAppDebugModeV4OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateAppDebugModeV4OK) ToJSONString() string {
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

func (o *UpdateAppDebugModeV4OK) GetPayload() *csmclientmodels.ApimodelAppItem {
	return o.Payload
}

func (o *UpdateAppDebugModeV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppDebugModeV4BadRequest creates a UpdateAppDebugModeV4BadRequest with default headers values
func NewUpdateAppDebugModeV4BadRequest() *UpdateAppDebugModeV4BadRequest {
	return &UpdateAppDebugModeV4BadRequest{}
}

/*UpdateAppDebugModeV4BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateAppDebugModeV4BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppDebugModeV4BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v4/admin/namespaces/{namespace}/apps/{app}/debugmode][%d] updateAppDebugModeV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateAppDebugModeV4BadRequest) ToJSONString() string {
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

func (o *UpdateAppDebugModeV4BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppDebugModeV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppDebugModeV4Unauthorized creates a UpdateAppDebugModeV4Unauthorized with default headers values
func NewUpdateAppDebugModeV4Unauthorized() *UpdateAppDebugModeV4Unauthorized {
	return &UpdateAppDebugModeV4Unauthorized{}
}

/*UpdateAppDebugModeV4Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateAppDebugModeV4Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppDebugModeV4Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v4/admin/namespaces/{namespace}/apps/{app}/debugmode][%d] updateAppDebugModeV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateAppDebugModeV4Unauthorized) ToJSONString() string {
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

func (o *UpdateAppDebugModeV4Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppDebugModeV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppDebugModeV4Forbidden creates a UpdateAppDebugModeV4Forbidden with default headers values
func NewUpdateAppDebugModeV4Forbidden() *UpdateAppDebugModeV4Forbidden {
	return &UpdateAppDebugModeV4Forbidden{}
}

/*UpdateAppDebugModeV4Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateAppDebugModeV4Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppDebugModeV4Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v4/admin/namespaces/{namespace}/apps/{app}/debugmode][%d] updateAppDebugModeV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateAppDebugModeV4Forbidden) ToJSONString() string {
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

func (o *UpdateAppDebugModeV4Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppDebugModeV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppDebugModeV4NotFound creates a UpdateAppDebugModeV4NotFound with default headers values
func NewUpdateAppDebugModeV4NotFound() *UpdateAppDebugModeV4NotFound {
	return &UpdateAppDebugModeV4NotFound{}
}

/*UpdateAppDebugModeV4NotFound handles this case with default header values.

  Not Found
*/
type UpdateAppDebugModeV4NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppDebugModeV4NotFound) Error() string {
	return fmt.Sprintf("[PUT /csm/v4/admin/namespaces/{namespace}/apps/{app}/debugmode][%d] updateAppDebugModeV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateAppDebugModeV4NotFound) ToJSONString() string {
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

func (o *UpdateAppDebugModeV4NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppDebugModeV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppDebugModeV4Conflict creates a UpdateAppDebugModeV4Conflict with default headers values
func NewUpdateAppDebugModeV4Conflict() *UpdateAppDebugModeV4Conflict {
	return &UpdateAppDebugModeV4Conflict{}
}

/*UpdateAppDebugModeV4Conflict handles this case with default header values.

  Conflict
*/
type UpdateAppDebugModeV4Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppDebugModeV4Conflict) Error() string {
	return fmt.Sprintf("[PUT /csm/v4/admin/namespaces/{namespace}/apps/{app}/debugmode][%d] updateAppDebugModeV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateAppDebugModeV4Conflict) ToJSONString() string {
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

func (o *UpdateAppDebugModeV4Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppDebugModeV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateAppDebugModeV4InternalServerError creates a UpdateAppDebugModeV4InternalServerError with default headers values
func NewUpdateAppDebugModeV4InternalServerError() *UpdateAppDebugModeV4InternalServerError {
	return &UpdateAppDebugModeV4InternalServerError{}
}

/*UpdateAppDebugModeV4InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateAppDebugModeV4InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppDebugModeV4InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v4/admin/namespaces/{namespace}/apps/{app}/debugmode][%d] updateAppDebugModeV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateAppDebugModeV4InternalServerError) ToJSONString() string {
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

func (o *UpdateAppDebugModeV4InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppDebugModeV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
