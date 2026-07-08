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

// GetAppDebugInfoV4Reader is a Reader for the GetAppDebugInfoV4 structure.
type GetAppDebugInfoV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAppDebugInfoV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAppDebugInfoV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAppDebugInfoV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAppDebugInfoV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAppDebugInfoV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAppDebugInfoV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewGetAppDebugInfoV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAppDebugInfoV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/debuginfo returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAppDebugInfoV4OK creates a GetAppDebugInfoV4OK with default headers values
func NewGetAppDebugInfoV4OK() *GetAppDebugInfoV4OK {
	return &GetAppDebugInfoV4OK{}
}

/*GetAppDebugInfoV4OK handles this case with default header values.

  OK
*/
type GetAppDebugInfoV4OK struct {
	Payload *csmclientmodels.ApimodelAppDebugInfoResponse
}

func (o *GetAppDebugInfoV4OK) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/debuginfo][%d] getAppDebugInfoV4OK  %+v", 200, o.ToJSONString())
}

func (o *GetAppDebugInfoV4OK) ToJSONString() string {
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

func (o *GetAppDebugInfoV4OK) GetPayload() *csmclientmodels.ApimodelAppDebugInfoResponse {
	return o.Payload
}

func (o *GetAppDebugInfoV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelAppDebugInfoResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAppDebugInfoV4BadRequest creates a GetAppDebugInfoV4BadRequest with default headers values
func NewGetAppDebugInfoV4BadRequest() *GetAppDebugInfoV4BadRequest {
	return &GetAppDebugInfoV4BadRequest{}
}

/*GetAppDebugInfoV4BadRequest handles this case with default header values.

  Bad Request
*/
type GetAppDebugInfoV4BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppDebugInfoV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/debuginfo][%d] getAppDebugInfoV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAppDebugInfoV4BadRequest) ToJSONString() string {
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

func (o *GetAppDebugInfoV4BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppDebugInfoV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppDebugInfoV4Unauthorized creates a GetAppDebugInfoV4Unauthorized with default headers values
func NewGetAppDebugInfoV4Unauthorized() *GetAppDebugInfoV4Unauthorized {
	return &GetAppDebugInfoV4Unauthorized{}
}

/*GetAppDebugInfoV4Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetAppDebugInfoV4Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppDebugInfoV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/debuginfo][%d] getAppDebugInfoV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAppDebugInfoV4Unauthorized) ToJSONString() string {
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

func (o *GetAppDebugInfoV4Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppDebugInfoV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppDebugInfoV4Forbidden creates a GetAppDebugInfoV4Forbidden with default headers values
func NewGetAppDebugInfoV4Forbidden() *GetAppDebugInfoV4Forbidden {
	return &GetAppDebugInfoV4Forbidden{}
}

/*GetAppDebugInfoV4Forbidden handles this case with default header values.

  Forbidden
*/
type GetAppDebugInfoV4Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppDebugInfoV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/debuginfo][%d] getAppDebugInfoV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAppDebugInfoV4Forbidden) ToJSONString() string {
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

func (o *GetAppDebugInfoV4Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppDebugInfoV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppDebugInfoV4NotFound creates a GetAppDebugInfoV4NotFound with default headers values
func NewGetAppDebugInfoV4NotFound() *GetAppDebugInfoV4NotFound {
	return &GetAppDebugInfoV4NotFound{}
}

/*GetAppDebugInfoV4NotFound handles this case with default header values.

  Not Found
*/
type GetAppDebugInfoV4NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppDebugInfoV4NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/debuginfo][%d] getAppDebugInfoV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAppDebugInfoV4NotFound) ToJSONString() string {
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

func (o *GetAppDebugInfoV4NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppDebugInfoV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppDebugInfoV4Conflict creates a GetAppDebugInfoV4Conflict with default headers values
func NewGetAppDebugInfoV4Conflict() *GetAppDebugInfoV4Conflict {
	return &GetAppDebugInfoV4Conflict{}
}

/*GetAppDebugInfoV4Conflict handles this case with default header values.

  Conflict
*/
type GetAppDebugInfoV4Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppDebugInfoV4Conflict) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/debuginfo][%d] getAppDebugInfoV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *GetAppDebugInfoV4Conflict) ToJSONString() string {
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

func (o *GetAppDebugInfoV4Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppDebugInfoV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppDebugInfoV4InternalServerError creates a GetAppDebugInfoV4InternalServerError with default headers values
func NewGetAppDebugInfoV4InternalServerError() *GetAppDebugInfoV4InternalServerError {
	return &GetAppDebugInfoV4InternalServerError{}
}

/*GetAppDebugInfoV4InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAppDebugInfoV4InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppDebugInfoV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/debuginfo][%d] getAppDebugInfoV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAppDebugInfoV4InternalServerError) ToJSONString() string {
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

func (o *GetAppDebugInfoV4InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppDebugInfoV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
