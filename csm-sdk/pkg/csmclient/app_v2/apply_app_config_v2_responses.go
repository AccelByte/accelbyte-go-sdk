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

// ApplyAppConfigV2Reader is a Reader for the ApplyAppConfigV2 structure.
type ApplyAppConfigV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ApplyAppConfigV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewApplyAppConfigV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewApplyAppConfigV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewApplyAppConfigV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewApplyAppConfigV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewApplyAppConfigV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewApplyAppConfigV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewApplyAppConfigV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/apply returns an error %d: %s", response.Code(), string(data))
	}
}

// NewApplyAppConfigV2OK creates a ApplyAppConfigV2OK with default headers values
func NewApplyAppConfigV2OK() *ApplyAppConfigV2OK {
	return &ApplyAppConfigV2OK{}
}

/*ApplyAppConfigV2OK handles this case with default header values.

  OK
*/
type ApplyAppConfigV2OK struct {
	Payload *csmclientmodels.ApimodelAppItem
}

func (o *ApplyAppConfigV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/apply][%d] applyAppConfigV2OK  %+v", 200, o.ToJSONString())
}

func (o *ApplyAppConfigV2OK) ToJSONString() string {
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

func (o *ApplyAppConfigV2OK) GetPayload() *csmclientmodels.ApimodelAppItem {
	return o.Payload
}

func (o *ApplyAppConfigV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewApplyAppConfigV2BadRequest creates a ApplyAppConfigV2BadRequest with default headers values
func NewApplyAppConfigV2BadRequest() *ApplyAppConfigV2BadRequest {
	return &ApplyAppConfigV2BadRequest{}
}

/*ApplyAppConfigV2BadRequest handles this case with default header values.

  Bad Request
*/
type ApplyAppConfigV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ApplyAppConfigV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/apply][%d] applyAppConfigV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *ApplyAppConfigV2BadRequest) ToJSONString() string {
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

func (o *ApplyAppConfigV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ApplyAppConfigV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewApplyAppConfigV2Unauthorized creates a ApplyAppConfigV2Unauthorized with default headers values
func NewApplyAppConfigV2Unauthorized() *ApplyAppConfigV2Unauthorized {
	return &ApplyAppConfigV2Unauthorized{}
}

/*ApplyAppConfigV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type ApplyAppConfigV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ApplyAppConfigV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/apply][%d] applyAppConfigV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *ApplyAppConfigV2Unauthorized) ToJSONString() string {
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

func (o *ApplyAppConfigV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ApplyAppConfigV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewApplyAppConfigV2Forbidden creates a ApplyAppConfigV2Forbidden with default headers values
func NewApplyAppConfigV2Forbidden() *ApplyAppConfigV2Forbidden {
	return &ApplyAppConfigV2Forbidden{}
}

/*ApplyAppConfigV2Forbidden handles this case with default header values.

  Forbidden
*/
type ApplyAppConfigV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ApplyAppConfigV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/apply][%d] applyAppConfigV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *ApplyAppConfigV2Forbidden) ToJSONString() string {
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

func (o *ApplyAppConfigV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ApplyAppConfigV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewApplyAppConfigV2NotFound creates a ApplyAppConfigV2NotFound with default headers values
func NewApplyAppConfigV2NotFound() *ApplyAppConfigV2NotFound {
	return &ApplyAppConfigV2NotFound{}
}

/*ApplyAppConfigV2NotFound handles this case with default header values.

  Not Found
*/
type ApplyAppConfigV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ApplyAppConfigV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/apply][%d] applyAppConfigV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *ApplyAppConfigV2NotFound) ToJSONString() string {
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

func (o *ApplyAppConfigV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ApplyAppConfigV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewApplyAppConfigV2Conflict creates a ApplyAppConfigV2Conflict with default headers values
func NewApplyAppConfigV2Conflict() *ApplyAppConfigV2Conflict {
	return &ApplyAppConfigV2Conflict{}
}

/*ApplyAppConfigV2Conflict handles this case with default header values.

  Conflict
*/
type ApplyAppConfigV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ApplyAppConfigV2Conflict) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/apply][%d] applyAppConfigV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *ApplyAppConfigV2Conflict) ToJSONString() string {
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

func (o *ApplyAppConfigV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ApplyAppConfigV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewApplyAppConfigV2InternalServerError creates a ApplyAppConfigV2InternalServerError with default headers values
func NewApplyAppConfigV2InternalServerError() *ApplyAppConfigV2InternalServerError {
	return &ApplyAppConfigV2InternalServerError{}
}

/*ApplyAppConfigV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type ApplyAppConfigV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ApplyAppConfigV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/apply][%d] applyAppConfigV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ApplyAppConfigV2InternalServerError) ToJSONString() string {
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

func (o *ApplyAppConfigV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ApplyAppConfigV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
