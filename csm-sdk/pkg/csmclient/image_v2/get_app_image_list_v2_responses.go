// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image_v2

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

// GetAppImageListV2Reader is a Reader for the GetAppImageListV2 structure.
type GetAppImageListV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAppImageListV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAppImageListV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAppImageListV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAppImageListV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAppImageListV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAppImageListV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/images returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAppImageListV2OK creates a GetAppImageListV2OK with default headers values
func NewGetAppImageListV2OK() *GetAppImageListV2OK {
	return &GetAppImageListV2OK{}
}

/*GetAppImageListV2OK handles this case with default header values.


 */
type GetAppImageListV2OK struct {
	Payload *csmclientmodels.ApimodelGetAppImageListV2Response
}

func (o *GetAppImageListV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/images][%d] getAppImageListV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetAppImageListV2OK) ToJSONString() string {
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

func (o *GetAppImageListV2OK) GetPayload() *csmclientmodels.ApimodelGetAppImageListV2Response {
	return o.Payload
}

func (o *GetAppImageListV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelGetAppImageListV2Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAppImageListV2Unauthorized creates a GetAppImageListV2Unauthorized with default headers values
func NewGetAppImageListV2Unauthorized() *GetAppImageListV2Unauthorized {
	return &GetAppImageListV2Unauthorized{}
}

/*GetAppImageListV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetAppImageListV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppImageListV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/images][%d] getAppImageListV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAppImageListV2Unauthorized) ToJSONString() string {
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

func (o *GetAppImageListV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppImageListV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppImageListV2Forbidden creates a GetAppImageListV2Forbidden with default headers values
func NewGetAppImageListV2Forbidden() *GetAppImageListV2Forbidden {
	return &GetAppImageListV2Forbidden{}
}

/*GetAppImageListV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetAppImageListV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppImageListV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/images][%d] getAppImageListV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAppImageListV2Forbidden) ToJSONString() string {
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

func (o *GetAppImageListV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppImageListV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppImageListV2NotFound creates a GetAppImageListV2NotFound with default headers values
func NewGetAppImageListV2NotFound() *GetAppImageListV2NotFound {
	return &GetAppImageListV2NotFound{}
}

/*GetAppImageListV2NotFound handles this case with default header values.

  Not Found
*/
type GetAppImageListV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppImageListV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/images][%d] getAppImageListV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAppImageListV2NotFound) ToJSONString() string {
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

func (o *GetAppImageListV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppImageListV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAppImageListV2InternalServerError creates a GetAppImageListV2InternalServerError with default headers values
func NewGetAppImageListV2InternalServerError() *GetAppImageListV2InternalServerError {
	return &GetAppImageListV2InternalServerError{}
}

/*GetAppImageListV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAppImageListV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetAppImageListV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/images][%d] getAppImageListV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAppImageListV2InternalServerError) ToJSONString() string {
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

func (o *GetAppImageListV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAppImageListV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
