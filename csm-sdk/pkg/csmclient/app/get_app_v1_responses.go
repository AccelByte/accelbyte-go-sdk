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

// GetAppV1Reader is a Reader for the GetAppV1 structure.
type GetAppV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAppV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAppV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAppV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAppV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAppV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAppV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v1/admin/namespaces/{namespace}/apps/{app} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAppV1OK creates a GetAppV1OK with default headers values
func NewGetAppV1OK() *GetAppV1OK {
	return &GetAppV1OK{}
}

/*GetAppV1OK handles this case with default header values.


 */
type GetAppV1OK struct {
	Payload *csmclientmodels.GeneratedGetAppV1Response
}

func (o *GetAppV1OK) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] getAppV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetAppV1OK) ToJSONString() string {
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

func (o *GetAppV1OK) GetPayload() *csmclientmodels.GeneratedGetAppV1Response {
	return o.Payload
}

func (o *GetAppV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedGetAppV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAppV1Unauthorized creates a GetAppV1Unauthorized with default headers values
func NewGetAppV1Unauthorized() *GetAppV1Unauthorized {
	return &GetAppV1Unauthorized{}
}

/*GetAppV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetAppV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] getAppV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAppV1Unauthorized) ToJSONString() string {
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

func (o *GetAppV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppV1Forbidden creates a GetAppV1Forbidden with default headers values
func NewGetAppV1Forbidden() *GetAppV1Forbidden {
	return &GetAppV1Forbidden{}
}

/*GetAppV1Forbidden handles this case with default header values.

  Forbidden
*/
type GetAppV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] getAppV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAppV1Forbidden) ToJSONString() string {
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

func (o *GetAppV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppV1NotFound creates a GetAppV1NotFound with default headers values
func NewGetAppV1NotFound() *GetAppV1NotFound {
	return &GetAppV1NotFound{}
}

/*GetAppV1NotFound handles this case with default header values.

  Not Found
*/
type GetAppV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppV1NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] getAppV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAppV1NotFound) ToJSONString() string {
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

func (o *GetAppV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppV1InternalServerError creates a GetAppV1InternalServerError with default headers values
func NewGetAppV1InternalServerError() *GetAppV1InternalServerError {
	return &GetAppV1InternalServerError{}
}

/*GetAppV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAppV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] getAppV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAppV1InternalServerError) ToJSONString() string {
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

func (o *GetAppV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
