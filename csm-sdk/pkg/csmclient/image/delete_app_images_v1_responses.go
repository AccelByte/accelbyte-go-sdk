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

// DeleteAppImagesV1Reader is a Reader for the DeleteAppImagesV1 structure.
type DeleteAppImagesV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteAppImagesV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteAppImagesV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteAppImagesV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteAppImagesV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteAppImagesV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteAppImagesV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/images returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteAppImagesV1NoContent creates a DeleteAppImagesV1NoContent with default headers values
func NewDeleteAppImagesV1NoContent() *DeleteAppImagesV1NoContent {
	return &DeleteAppImagesV1NoContent{}
}

/*DeleteAppImagesV1NoContent handles this case with default header values.


 */
type DeleteAppImagesV1NoContent struct {
}

func (o *DeleteAppImagesV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/images][%d] deleteAppImagesV1NoContent ", 204)
}

func (o *DeleteAppImagesV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteAppImagesV1Unauthorized creates a DeleteAppImagesV1Unauthorized with default headers values
func NewDeleteAppImagesV1Unauthorized() *DeleteAppImagesV1Unauthorized {
	return &DeleteAppImagesV1Unauthorized{}
}

/*DeleteAppImagesV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteAppImagesV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppImagesV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/images][%d] deleteAppImagesV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteAppImagesV1Unauthorized) ToJSONString() string {
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

func (o *DeleteAppImagesV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppImagesV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAppImagesV1Forbidden creates a DeleteAppImagesV1Forbidden with default headers values
func NewDeleteAppImagesV1Forbidden() *DeleteAppImagesV1Forbidden {
	return &DeleteAppImagesV1Forbidden{}
}

/*DeleteAppImagesV1Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteAppImagesV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppImagesV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/images][%d] deleteAppImagesV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteAppImagesV1Forbidden) ToJSONString() string {
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

func (o *DeleteAppImagesV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppImagesV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAppImagesV1NotFound creates a DeleteAppImagesV1NotFound with default headers values
func NewDeleteAppImagesV1NotFound() *DeleteAppImagesV1NotFound {
	return &DeleteAppImagesV1NotFound{}
}

/*DeleteAppImagesV1NotFound handles this case with default header values.

  Not Found
*/
type DeleteAppImagesV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppImagesV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/images][%d] deleteAppImagesV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteAppImagesV1NotFound) ToJSONString() string {
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

func (o *DeleteAppImagesV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppImagesV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAppImagesV1InternalServerError creates a DeleteAppImagesV1InternalServerError with default headers values
func NewDeleteAppImagesV1InternalServerError() *DeleteAppImagesV1InternalServerError {
	return &DeleteAppImagesV1InternalServerError{}
}

/*DeleteAppImagesV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteAppImagesV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppImagesV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/images][%d] deleteAppImagesV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteAppImagesV1InternalServerError) ToJSONString() string {
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

func (o *DeleteAppImagesV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppImagesV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
