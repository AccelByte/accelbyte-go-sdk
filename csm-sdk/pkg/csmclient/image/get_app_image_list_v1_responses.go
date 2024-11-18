// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image

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

// GetAppImageListV1Reader is a Reader for the GetAppImageListV1 structure.
type GetAppImageListV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAppImageListV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAppImageListV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAppImageListV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAppImageListV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAppImageListV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAppImageListV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/images returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAppImageListV1OK creates a GetAppImageListV1OK with default headers values
func NewGetAppImageListV1OK() *GetAppImageListV1OK {
	return &GetAppImageListV1OK{}
}

/*GetAppImageListV1OK handles this case with default header values.


 */
type GetAppImageListV1OK struct {
	Payload *csmclientmodels.GeneratedGetAppImageListV1Response
}

func (o *GetAppImageListV1OK) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/images][%d] getAppImageListV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetAppImageListV1OK) ToJSONString() string {
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

func (o *GetAppImageListV1OK) GetPayload() *csmclientmodels.GeneratedGetAppImageListV1Response {
	return o.Payload
}

func (o *GetAppImageListV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedGetAppImageListV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAppImageListV1Unauthorized creates a GetAppImageListV1Unauthorized with default headers values
func NewGetAppImageListV1Unauthorized() *GetAppImageListV1Unauthorized {
	return &GetAppImageListV1Unauthorized{}
}

/*GetAppImageListV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetAppImageListV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppImageListV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/images][%d] getAppImageListV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAppImageListV1Unauthorized) ToJSONString() string {
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

func (o *GetAppImageListV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppImageListV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppImageListV1Forbidden creates a GetAppImageListV1Forbidden with default headers values
func NewGetAppImageListV1Forbidden() *GetAppImageListV1Forbidden {
	return &GetAppImageListV1Forbidden{}
}

/*GetAppImageListV1Forbidden handles this case with default header values.

  Forbidden
*/
type GetAppImageListV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppImageListV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/images][%d] getAppImageListV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAppImageListV1Forbidden) ToJSONString() string {
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

func (o *GetAppImageListV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppImageListV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppImageListV1NotFound creates a GetAppImageListV1NotFound with default headers values
func NewGetAppImageListV1NotFound() *GetAppImageListV1NotFound {
	return &GetAppImageListV1NotFound{}
}

/*GetAppImageListV1NotFound handles this case with default header values.

  Not Found
*/
type GetAppImageListV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppImageListV1NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/images][%d] getAppImageListV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAppImageListV1NotFound) ToJSONString() string {
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

func (o *GetAppImageListV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppImageListV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppImageListV1InternalServerError creates a GetAppImageListV1InternalServerError with default headers values
func NewGetAppImageListV1InternalServerError() *GetAppImageListV1InternalServerError {
	return &GetAppImageListV1InternalServerError{}
}

/*GetAppImageListV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAppImageListV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppImageListV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/images][%d] getAppImageListV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAppImageListV1InternalServerError) ToJSONString() string {
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

func (o *GetAppImageListV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppImageListV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
