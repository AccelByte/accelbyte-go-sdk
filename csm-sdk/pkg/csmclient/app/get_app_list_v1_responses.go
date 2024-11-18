// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app

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

// GetAppListV1Reader is a Reader for the GetAppListV1 structure.
type GetAppListV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAppListV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAppListV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAppListV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAppListV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAppListV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAppListV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAppListV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v1/admin/namespaces/{namespace}/apps returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAppListV1OK creates a GetAppListV1OK with default headers values
func NewGetAppListV1OK() *GetAppListV1OK {
	return &GetAppListV1OK{}
}

/*GetAppListV1OK handles this case with default header values.


 */
type GetAppListV1OK struct {
	Payload *csmclientmodels.GeneratedGetAppListV1Response
}

func (o *GetAppListV1OK) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps][%d] getAppListV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetAppListV1OK) ToJSONString() string {
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

func (o *GetAppListV1OK) GetPayload() *csmclientmodels.GeneratedGetAppListV1Response {
	return o.Payload
}

func (o *GetAppListV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedGetAppListV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAppListV1BadRequest creates a GetAppListV1BadRequest with default headers values
func NewGetAppListV1BadRequest() *GetAppListV1BadRequest {
	return &GetAppListV1BadRequest{}
}

/*GetAppListV1BadRequest handles this case with default header values.

  Bad Request
*/
type GetAppListV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppListV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps][%d] getAppListV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAppListV1BadRequest) ToJSONString() string {
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

func (o *GetAppListV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppListV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppListV1Unauthorized creates a GetAppListV1Unauthorized with default headers values
func NewGetAppListV1Unauthorized() *GetAppListV1Unauthorized {
	return &GetAppListV1Unauthorized{}
}

/*GetAppListV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetAppListV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppListV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps][%d] getAppListV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAppListV1Unauthorized) ToJSONString() string {
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

func (o *GetAppListV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppListV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppListV1Forbidden creates a GetAppListV1Forbidden with default headers values
func NewGetAppListV1Forbidden() *GetAppListV1Forbidden {
	return &GetAppListV1Forbidden{}
}

/*GetAppListV1Forbidden handles this case with default header values.

  Forbidden
*/
type GetAppListV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppListV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps][%d] getAppListV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAppListV1Forbidden) ToJSONString() string {
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

func (o *GetAppListV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppListV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppListV1NotFound creates a GetAppListV1NotFound with default headers values
func NewGetAppListV1NotFound() *GetAppListV1NotFound {
	return &GetAppListV1NotFound{}
}

/*GetAppListV1NotFound handles this case with default header values.

  Not Found
*/
type GetAppListV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppListV1NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps][%d] getAppListV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAppListV1NotFound) ToJSONString() string {
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

func (o *GetAppListV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppListV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppListV1InternalServerError creates a GetAppListV1InternalServerError with default headers values
func NewGetAppListV1InternalServerError() *GetAppListV1InternalServerError {
	return &GetAppListV1InternalServerError{}
}

/*GetAppListV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAppListV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppListV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/apps][%d] getAppListV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAppListV1InternalServerError) ToJSONString() string {
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

func (o *GetAppListV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppListV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
