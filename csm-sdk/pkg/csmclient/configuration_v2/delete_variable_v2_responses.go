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

// DeleteVariableV2Reader is a Reader for the DeleteVariableV2 structure.
type DeleteVariableV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteVariableV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteVariableV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteVariableV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteVariableV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteVariableV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteVariableV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteVariableV2NoContent creates a DeleteVariableV2NoContent with default headers values
func NewDeleteVariableV2NoContent() *DeleteVariableV2NoContent {
	return &DeleteVariableV2NoContent{}
}

/*DeleteVariableV2NoContent handles this case with default header values.


 */
type DeleteVariableV2NoContent struct {
}

func (o *DeleteVariableV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] deleteVariableV2NoContent ", 204)
}

func (o *DeleteVariableV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteVariableV2Unauthorized creates a DeleteVariableV2Unauthorized with default headers values
func NewDeleteVariableV2Unauthorized() *DeleteVariableV2Unauthorized {
	return &DeleteVariableV2Unauthorized{}
}

/*DeleteVariableV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteVariableV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteVariableV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] deleteVariableV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteVariableV2Unauthorized) ToJSONString() string {
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

func (o *DeleteVariableV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteVariableV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteVariableV2Forbidden creates a DeleteVariableV2Forbidden with default headers values
func NewDeleteVariableV2Forbidden() *DeleteVariableV2Forbidden {
	return &DeleteVariableV2Forbidden{}
}

/*DeleteVariableV2Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteVariableV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteVariableV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] deleteVariableV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteVariableV2Forbidden) ToJSONString() string {
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

func (o *DeleteVariableV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteVariableV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteVariableV2NotFound creates a DeleteVariableV2NotFound with default headers values
func NewDeleteVariableV2NotFound() *DeleteVariableV2NotFound {
	return &DeleteVariableV2NotFound{}
}

/*DeleteVariableV2NotFound handles this case with default header values.

  Not Found
*/
type DeleteVariableV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteVariableV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] deleteVariableV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteVariableV2NotFound) ToJSONString() string {
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

func (o *DeleteVariableV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteVariableV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteVariableV2InternalServerError creates a DeleteVariableV2InternalServerError with default headers values
func NewDeleteVariableV2InternalServerError() *DeleteVariableV2InternalServerError {
	return &DeleteVariableV2InternalServerError{}
}

/*DeleteVariableV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteVariableV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteVariableV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] deleteVariableV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteVariableV2InternalServerError) ToJSONString() string {
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

func (o *DeleteVariableV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteVariableV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
