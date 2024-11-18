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

// DeleteAppV1Reader is a Reader for the DeleteAppV1 structure.
type DeleteAppV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteAppV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteAppV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteAppV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteAppV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteAppV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteAppV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteAppV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteAppV1NoContent creates a DeleteAppV1NoContent with default headers values
func NewDeleteAppV1NoContent() *DeleteAppV1NoContent {
	return &DeleteAppV1NoContent{}
}

/*DeleteAppV1NoContent handles this case with default header values.


 */
type DeleteAppV1NoContent struct {
}

func (o *DeleteAppV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] deleteAppV1NoContent ", 204)
}

func (o *DeleteAppV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteAppV1BadRequest creates a DeleteAppV1BadRequest with default headers values
func NewDeleteAppV1BadRequest() *DeleteAppV1BadRequest {
	return &DeleteAppV1BadRequest{}
}

/*DeleteAppV1BadRequest handles this case with default header values.

  Bad Request
*/
type DeleteAppV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] deleteAppV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteAppV1BadRequest) ToJSONString() string {
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

func (o *DeleteAppV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAppV1Unauthorized creates a DeleteAppV1Unauthorized with default headers values
func NewDeleteAppV1Unauthorized() *DeleteAppV1Unauthorized {
	return &DeleteAppV1Unauthorized{}
}

/*DeleteAppV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteAppV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] deleteAppV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteAppV1Unauthorized) ToJSONString() string {
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

func (o *DeleteAppV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAppV1Forbidden creates a DeleteAppV1Forbidden with default headers values
func NewDeleteAppV1Forbidden() *DeleteAppV1Forbidden {
	return &DeleteAppV1Forbidden{}
}

/*DeleteAppV1Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteAppV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] deleteAppV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteAppV1Forbidden) ToJSONString() string {
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

func (o *DeleteAppV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAppV1NotFound creates a DeleteAppV1NotFound with default headers values
func NewDeleteAppV1NotFound() *DeleteAppV1NotFound {
	return &DeleteAppV1NotFound{}
}

/*DeleteAppV1NotFound handles this case with default header values.

  Not Found
*/
type DeleteAppV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] deleteAppV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteAppV1NotFound) ToJSONString() string {
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

func (o *DeleteAppV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAppV1InternalServerError creates a DeleteAppV1InternalServerError with default headers values
func NewDeleteAppV1InternalServerError() *DeleteAppV1InternalServerError {
	return &DeleteAppV1InternalServerError{}
}

/*DeleteAppV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteAppV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteAppV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] deleteAppV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteAppV1InternalServerError) ToJSONString() string {
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

func (o *DeleteAppV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteAppV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
