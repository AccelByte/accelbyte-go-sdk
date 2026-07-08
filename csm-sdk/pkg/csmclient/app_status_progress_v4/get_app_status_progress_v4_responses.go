// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_status_progress_v4

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

// GetAppStatusProgressV4Reader is a Reader for the GetAppStatusProgressV4 structure.
type GetAppStatusProgressV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAppStatusProgressV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAppStatusProgressV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAppStatusProgressV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAppStatusProgressV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAppStatusProgressV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAppStatusProgressV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAppStatusProgressV4OK creates a GetAppStatusProgressV4OK with default headers values
func NewGetAppStatusProgressV4OK() *GetAppStatusProgressV4OK {
	return &GetAppStatusProgressV4OK{}
}

/*GetAppStatusProgressV4OK handles this case with default header values.

  OK
*/
type GetAppStatusProgressV4OK struct {
	Payload *csmclientmodels.ApimodelGetAppStatusProgressResponse
}

func (o *GetAppStatusProgressV4OK) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress][%d] getAppStatusProgressV4OK  %+v", 200, o.ToJSONString())
}

func (o *GetAppStatusProgressV4OK) ToJSONString() string {
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

func (o *GetAppStatusProgressV4OK) GetPayload() *csmclientmodels.ApimodelGetAppStatusProgressResponse {
	return o.Payload
}

func (o *GetAppStatusProgressV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelGetAppStatusProgressResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAppStatusProgressV4Unauthorized creates a GetAppStatusProgressV4Unauthorized with default headers values
func NewGetAppStatusProgressV4Unauthorized() *GetAppStatusProgressV4Unauthorized {
	return &GetAppStatusProgressV4Unauthorized{}
}

/*GetAppStatusProgressV4Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetAppStatusProgressV4Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppStatusProgressV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress][%d] getAppStatusProgressV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAppStatusProgressV4Unauthorized) ToJSONString() string {
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

func (o *GetAppStatusProgressV4Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppStatusProgressV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppStatusProgressV4Forbidden creates a GetAppStatusProgressV4Forbidden with default headers values
func NewGetAppStatusProgressV4Forbidden() *GetAppStatusProgressV4Forbidden {
	return &GetAppStatusProgressV4Forbidden{}
}

/*GetAppStatusProgressV4Forbidden handles this case with default header values.

  Forbidden
*/
type GetAppStatusProgressV4Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppStatusProgressV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress][%d] getAppStatusProgressV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAppStatusProgressV4Forbidden) ToJSONString() string {
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

func (o *GetAppStatusProgressV4Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppStatusProgressV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppStatusProgressV4NotFound creates a GetAppStatusProgressV4NotFound with default headers values
func NewGetAppStatusProgressV4NotFound() *GetAppStatusProgressV4NotFound {
	return &GetAppStatusProgressV4NotFound{}
}

/*GetAppStatusProgressV4NotFound handles this case with default header values.

  Not Found
*/
type GetAppStatusProgressV4NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppStatusProgressV4NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress][%d] getAppStatusProgressV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAppStatusProgressV4NotFound) ToJSONString() string {
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

func (o *GetAppStatusProgressV4NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppStatusProgressV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppStatusProgressV4InternalServerError creates a GetAppStatusProgressV4InternalServerError with default headers values
func NewGetAppStatusProgressV4InternalServerError() *GetAppStatusProgressV4InternalServerError {
	return &GetAppStatusProgressV4InternalServerError{}
}

/*GetAppStatusProgressV4InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAppStatusProgressV4InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppStatusProgressV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress][%d] getAppStatusProgressV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAppStatusProgressV4InternalServerError) ToJSONString() string {
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

func (o *GetAppStatusProgressV4InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppStatusProgressV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
