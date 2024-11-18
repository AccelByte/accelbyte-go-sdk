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

// DeleteVariableV1Reader is a Reader for the DeleteVariableV1 structure.
type DeleteVariableV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteVariableV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteVariableV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteVariableV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteVariableV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteVariableV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteVariableV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteVariableV1NoContent creates a DeleteVariableV1NoContent with default headers values
func NewDeleteVariableV1NoContent() *DeleteVariableV1NoContent {
	return &DeleteVariableV1NoContent{}
}

/*DeleteVariableV1NoContent handles this case with default header values.


 */
type DeleteVariableV1NoContent struct {
}

func (o *DeleteVariableV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] deleteVariableV1NoContent ", 204)
}

func (o *DeleteVariableV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteVariableV1Unauthorized creates a DeleteVariableV1Unauthorized with default headers values
func NewDeleteVariableV1Unauthorized() *DeleteVariableV1Unauthorized {
	return &DeleteVariableV1Unauthorized{}
}

/*DeleteVariableV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteVariableV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteVariableV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] deleteVariableV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteVariableV1Unauthorized) ToJSONString() string {
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

func (o *DeleteVariableV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteVariableV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteVariableV1Forbidden creates a DeleteVariableV1Forbidden with default headers values
func NewDeleteVariableV1Forbidden() *DeleteVariableV1Forbidden {
	return &DeleteVariableV1Forbidden{}
}

/*DeleteVariableV1Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteVariableV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteVariableV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] deleteVariableV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteVariableV1Forbidden) ToJSONString() string {
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

func (o *DeleteVariableV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteVariableV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteVariableV1NotFound creates a DeleteVariableV1NotFound with default headers values
func NewDeleteVariableV1NotFound() *DeleteVariableV1NotFound {
	return &DeleteVariableV1NotFound{}
}

/*DeleteVariableV1NotFound handles this case with default header values.

  Not Found
*/
type DeleteVariableV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteVariableV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] deleteVariableV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteVariableV1NotFound) ToJSONString() string {
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

func (o *DeleteVariableV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteVariableV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteVariableV1InternalServerError creates a DeleteVariableV1InternalServerError with default headers values
func NewDeleteVariableV1InternalServerError() *DeleteVariableV1InternalServerError {
	return &DeleteVariableV1InternalServerError{}
}

/*DeleteVariableV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteVariableV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteVariableV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] deleteVariableV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteVariableV1InternalServerError) ToJSONString() string {
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

func (o *DeleteVariableV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteVariableV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
