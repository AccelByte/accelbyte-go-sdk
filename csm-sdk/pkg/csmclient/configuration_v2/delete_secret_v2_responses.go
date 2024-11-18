// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_v2

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

// DeleteSecretV2Reader is a Reader for the DeleteSecretV2 structure.
type DeleteSecretV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSecretV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteSecretV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteSecretV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteSecretV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSecretV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteSecretV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSecretV2NoContent creates a DeleteSecretV2NoContent with default headers values
func NewDeleteSecretV2NoContent() *DeleteSecretV2NoContent {
	return &DeleteSecretV2NoContent{}
}

/*DeleteSecretV2NoContent handles this case with default header values.


 */
type DeleteSecretV2NoContent struct {
}

func (o *DeleteSecretV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] deleteSecretV2NoContent ", 204)
}

func (o *DeleteSecretV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteSecretV2Unauthorized creates a DeleteSecretV2Unauthorized with default headers values
func NewDeleteSecretV2Unauthorized() *DeleteSecretV2Unauthorized {
	return &DeleteSecretV2Unauthorized{}
}

/*DeleteSecretV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteSecretV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSecretV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] deleteSecretV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteSecretV2Unauthorized) ToJSONString() string {
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

func (o *DeleteSecretV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSecretV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSecretV2Forbidden creates a DeleteSecretV2Forbidden with default headers values
func NewDeleteSecretV2Forbidden() *DeleteSecretV2Forbidden {
	return &DeleteSecretV2Forbidden{}
}

/*DeleteSecretV2Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteSecretV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSecretV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] deleteSecretV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteSecretV2Forbidden) ToJSONString() string {
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

func (o *DeleteSecretV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSecretV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSecretV2NotFound creates a DeleteSecretV2NotFound with default headers values
func NewDeleteSecretV2NotFound() *DeleteSecretV2NotFound {
	return &DeleteSecretV2NotFound{}
}

/*DeleteSecretV2NotFound handles this case with default header values.

  Not Found
*/
type DeleteSecretV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSecretV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] deleteSecretV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteSecretV2NotFound) ToJSONString() string {
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

func (o *DeleteSecretV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSecretV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSecretV2InternalServerError creates a DeleteSecretV2InternalServerError with default headers values
func NewDeleteSecretV2InternalServerError() *DeleteSecretV2InternalServerError {
	return &DeleteSecretV2InternalServerError{}
}

/*DeleteSecretV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteSecretV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSecretV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] deleteSecretV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteSecretV2InternalServerError) ToJSONString() string {
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

func (o *DeleteSecretV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSecretV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
