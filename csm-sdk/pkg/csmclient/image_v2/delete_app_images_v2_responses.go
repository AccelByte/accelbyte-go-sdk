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

// DeleteAppImagesV2Reader is a Reader for the DeleteAppImagesV2 structure.
type DeleteAppImagesV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteAppImagesV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteAppImagesV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteAppImagesV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteAppImagesV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteAppImagesV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteAppImagesV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/images returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteAppImagesV2NoContent creates a DeleteAppImagesV2NoContent with default headers values
func NewDeleteAppImagesV2NoContent() *DeleteAppImagesV2NoContent {
	return &DeleteAppImagesV2NoContent{}
}

/*DeleteAppImagesV2NoContent handles this case with default header values.


 */
type DeleteAppImagesV2NoContent struct {
}

func (o *DeleteAppImagesV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/images][%d] deleteAppImagesV2NoContent ", 204)
}

func (o *DeleteAppImagesV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteAppImagesV2Unauthorized creates a DeleteAppImagesV2Unauthorized with default headers values
func NewDeleteAppImagesV2Unauthorized() *DeleteAppImagesV2Unauthorized {
	return &DeleteAppImagesV2Unauthorized{}
}

/*DeleteAppImagesV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteAppImagesV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppImagesV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/images][%d] deleteAppImagesV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteAppImagesV2Unauthorized) ToJSONString() string {
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

func (o *DeleteAppImagesV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppImagesV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAppImagesV2Forbidden creates a DeleteAppImagesV2Forbidden with default headers values
func NewDeleteAppImagesV2Forbidden() *DeleteAppImagesV2Forbidden {
	return &DeleteAppImagesV2Forbidden{}
}

/*DeleteAppImagesV2Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteAppImagesV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppImagesV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/images][%d] deleteAppImagesV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteAppImagesV2Forbidden) ToJSONString() string {
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

func (o *DeleteAppImagesV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppImagesV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAppImagesV2NotFound creates a DeleteAppImagesV2NotFound with default headers values
func NewDeleteAppImagesV2NotFound() *DeleteAppImagesV2NotFound {
	return &DeleteAppImagesV2NotFound{}
}

/*DeleteAppImagesV2NotFound handles this case with default header values.

  Not Found
*/
type DeleteAppImagesV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppImagesV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/images][%d] deleteAppImagesV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteAppImagesV2NotFound) ToJSONString() string {
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

func (o *DeleteAppImagesV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppImagesV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAppImagesV2InternalServerError creates a DeleteAppImagesV2InternalServerError with default headers values
func NewDeleteAppImagesV2InternalServerError() *DeleteAppImagesV2InternalServerError {
	return &DeleteAppImagesV2InternalServerError{}
}

/*DeleteAppImagesV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteAppImagesV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppImagesV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/images][%d] deleteAppImagesV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteAppImagesV2InternalServerError) ToJSONString() string {
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

func (o *DeleteAppImagesV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppImagesV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
