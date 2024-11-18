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

// GetAppReleaseV1Reader is a Reader for the GetAppReleaseV1 structure.
type GetAppReleaseV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAppReleaseV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAppReleaseV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAppReleaseV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAppReleaseV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAppReleaseV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAppReleaseV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/release returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAppReleaseV1OK creates a GetAppReleaseV1OK with default headers values
func NewGetAppReleaseV1OK() *GetAppReleaseV1OK {
	return &GetAppReleaseV1OK{}
}

/*GetAppReleaseV1OK handles this case with default header values.


 */
type GetAppReleaseV1OK struct {
	Payload *csmclientmodels.GeneratedGetAppReleaseV1Response
}

func (o *GetAppReleaseV1OK) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/release][%d] getAppReleaseV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetAppReleaseV1OK) ToJSONString() string {
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

func (o *GetAppReleaseV1OK) GetPayload() *csmclientmodels.GeneratedGetAppReleaseV1Response {
	return o.Payload
}

func (o *GetAppReleaseV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedGetAppReleaseV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAppReleaseV1Unauthorized creates a GetAppReleaseV1Unauthorized with default headers values
func NewGetAppReleaseV1Unauthorized() *GetAppReleaseV1Unauthorized {
	return &GetAppReleaseV1Unauthorized{}
}

/*GetAppReleaseV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetAppReleaseV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppReleaseV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/release][%d] getAppReleaseV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAppReleaseV1Unauthorized) ToJSONString() string {
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

func (o *GetAppReleaseV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppReleaseV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppReleaseV1Forbidden creates a GetAppReleaseV1Forbidden with default headers values
func NewGetAppReleaseV1Forbidden() *GetAppReleaseV1Forbidden {
	return &GetAppReleaseV1Forbidden{}
}

/*GetAppReleaseV1Forbidden handles this case with default header values.

  Forbidden
*/
type GetAppReleaseV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppReleaseV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/release][%d] getAppReleaseV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAppReleaseV1Forbidden) ToJSONString() string {
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

func (o *GetAppReleaseV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppReleaseV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppReleaseV1NotFound creates a GetAppReleaseV1NotFound with default headers values
func NewGetAppReleaseV1NotFound() *GetAppReleaseV1NotFound {
	return &GetAppReleaseV1NotFound{}
}

/*GetAppReleaseV1NotFound handles this case with default header values.

  Not Found
*/
type GetAppReleaseV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppReleaseV1NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/release][%d] getAppReleaseV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAppReleaseV1NotFound) ToJSONString() string {
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

func (o *GetAppReleaseV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppReleaseV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppReleaseV1InternalServerError creates a GetAppReleaseV1InternalServerError with default headers values
func NewGetAppReleaseV1InternalServerError() *GetAppReleaseV1InternalServerError {
	return &GetAppReleaseV1InternalServerError{}
}

/*GetAppReleaseV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAppReleaseV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppReleaseV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/release][%d] getAppReleaseV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAppReleaseV1InternalServerError) ToJSONString() string {
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

func (o *GetAppReleaseV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppReleaseV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
