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

// GetAppListV2Reader is a Reader for the GetAppListV2 structure.
type GetAppListV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAppListV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAppListV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAppListV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAppListV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAppListV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAppListV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAppListV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAppListV2OK creates a GetAppListV2OK with default headers values
func NewGetAppListV2OK() *GetAppListV2OK {
	return &GetAppListV2OK{}
}

/*GetAppListV2OK handles this case with default header values.

  List of apps
*/
type GetAppListV2OK struct {
	Payload *csmclientmodels.ApimodelGetAppListV2Response
}

func (o *GetAppListV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps][%d] getAppListV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetAppListV2OK) ToJSONString() string {
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

func (o *GetAppListV2OK) GetPayload() *csmclientmodels.ApimodelGetAppListV2Response {
	return o.Payload
}

func (o *GetAppListV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelGetAppListV2Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAppListV2BadRequest creates a GetAppListV2BadRequest with default headers values
func NewGetAppListV2BadRequest() *GetAppListV2BadRequest {
	return &GetAppListV2BadRequest{}
}

/*GetAppListV2BadRequest handles this case with default header values.

  Bad Request
*/
type GetAppListV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppListV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps][%d] getAppListV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAppListV2BadRequest) ToJSONString() string {
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

func (o *GetAppListV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppListV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppListV2Unauthorized creates a GetAppListV2Unauthorized with default headers values
func NewGetAppListV2Unauthorized() *GetAppListV2Unauthorized {
	return &GetAppListV2Unauthorized{}
}

/*GetAppListV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetAppListV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppListV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps][%d] getAppListV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAppListV2Unauthorized) ToJSONString() string {
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

func (o *GetAppListV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppListV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppListV2Forbidden creates a GetAppListV2Forbidden with default headers values
func NewGetAppListV2Forbidden() *GetAppListV2Forbidden {
	return &GetAppListV2Forbidden{}
}

/*GetAppListV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetAppListV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppListV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps][%d] getAppListV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAppListV2Forbidden) ToJSONString() string {
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

func (o *GetAppListV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppListV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppListV2NotFound creates a GetAppListV2NotFound with default headers values
func NewGetAppListV2NotFound() *GetAppListV2NotFound {
	return &GetAppListV2NotFound{}
}

/*GetAppListV2NotFound handles this case with default header values.

  Not Found
*/
type GetAppListV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppListV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps][%d] getAppListV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAppListV2NotFound) ToJSONString() string {
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

func (o *GetAppListV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppListV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppListV2InternalServerError creates a GetAppListV2InternalServerError with default headers values
func NewGetAppListV2InternalServerError() *GetAppListV2InternalServerError {
	return &GetAppListV2InternalServerError{}
}

/*GetAppListV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAppListV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppListV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps][%d] getAppListV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAppListV2InternalServerError) ToJSONString() string {
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

func (o *GetAppListV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppListV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
