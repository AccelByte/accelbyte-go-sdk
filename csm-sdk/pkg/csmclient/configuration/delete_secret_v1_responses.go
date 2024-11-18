// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

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

// DeleteSecretV1Reader is a Reader for the DeleteSecretV1 structure.
type DeleteSecretV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSecretV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteSecretV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteSecretV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteSecretV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSecretV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteSecretV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSecretV1NoContent creates a DeleteSecretV1NoContent with default headers values
func NewDeleteSecretV1NoContent() *DeleteSecretV1NoContent {
	return &DeleteSecretV1NoContent{}
}

/*DeleteSecretV1NoContent handles this case with default header values.


 */
type DeleteSecretV1NoContent struct {
}

func (o *DeleteSecretV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] deleteSecretV1NoContent ", 204)
}

func (o *DeleteSecretV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteSecretV1Unauthorized creates a DeleteSecretV1Unauthorized with default headers values
func NewDeleteSecretV1Unauthorized() *DeleteSecretV1Unauthorized {
	return &DeleteSecretV1Unauthorized{}
}

/*DeleteSecretV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteSecretV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSecretV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] deleteSecretV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteSecretV1Unauthorized) ToJSONString() string {
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

func (o *DeleteSecretV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSecretV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSecretV1Forbidden creates a DeleteSecretV1Forbidden with default headers values
func NewDeleteSecretV1Forbidden() *DeleteSecretV1Forbidden {
	return &DeleteSecretV1Forbidden{}
}

/*DeleteSecretV1Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteSecretV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSecretV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] deleteSecretV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteSecretV1Forbidden) ToJSONString() string {
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

func (o *DeleteSecretV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSecretV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSecretV1NotFound creates a DeleteSecretV1NotFound with default headers values
func NewDeleteSecretV1NotFound() *DeleteSecretV1NotFound {
	return &DeleteSecretV1NotFound{}
}

/*DeleteSecretV1NotFound handles this case with default header values.

  Not Found
*/
type DeleteSecretV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSecretV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] deleteSecretV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteSecretV1NotFound) ToJSONString() string {
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

func (o *DeleteSecretV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSecretV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSecretV1InternalServerError creates a DeleteSecretV1InternalServerError with default headers values
func NewDeleteSecretV1InternalServerError() *DeleteSecretV1InternalServerError {
	return &DeleteSecretV1InternalServerError{}
}

/*DeleteSecretV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteSecretV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSecretV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] deleteSecretV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteSecretV1InternalServerError) ToJSONString() string {
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

func (o *DeleteSecretV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSecretV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
