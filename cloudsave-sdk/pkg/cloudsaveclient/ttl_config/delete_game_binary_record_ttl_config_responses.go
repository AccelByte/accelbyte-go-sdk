// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ttl_config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// DeleteGameBinaryRecordTTLConfigReader is a Reader for the DeleteGameBinaryRecordTTLConfig structure.
type DeleteGameBinaryRecordTTLConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteGameBinaryRecordTTLConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteGameBinaryRecordTTLConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteGameBinaryRecordTTLConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteGameBinaryRecordTTLConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteGameBinaryRecordTTLConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteGameBinaryRecordTTLConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteGameBinaryRecordTTLConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteGameBinaryRecordTTLConfigNoContent creates a DeleteGameBinaryRecordTTLConfigNoContent with default headers values
func NewDeleteGameBinaryRecordTTLConfigNoContent() *DeleteGameBinaryRecordTTLConfigNoContent {
	return &DeleteGameBinaryRecordTTLConfigNoContent{}
}

/*DeleteGameBinaryRecordTTLConfigNoContent handles this case with default header values.

  TTL config deleted
*/
type DeleteGameBinaryRecordTTLConfigNoContent struct {
}

func (o *DeleteGameBinaryRecordTTLConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl][%d] deleteGameBinaryRecordTtlConfigNoContent ", 204)
}

func (o *DeleteGameBinaryRecordTTLConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteGameBinaryRecordTTLConfigBadRequest creates a DeleteGameBinaryRecordTTLConfigBadRequest with default headers values
func NewDeleteGameBinaryRecordTTLConfigBadRequest() *DeleteGameBinaryRecordTTLConfigBadRequest {
	return &DeleteGameBinaryRecordTTLConfigBadRequest{}
}

/*DeleteGameBinaryRecordTTLConfigBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteGameBinaryRecordTTLConfigBadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameBinaryRecordTTLConfigBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl][%d] deleteGameBinaryRecordTtlConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteGameBinaryRecordTTLConfigBadRequest) ToJSONString() string {
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

func (o *DeleteGameBinaryRecordTTLConfigBadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameBinaryRecordTTLConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteGameBinaryRecordTTLConfigUnauthorized creates a DeleteGameBinaryRecordTTLConfigUnauthorized with default headers values
func NewDeleteGameBinaryRecordTTLConfigUnauthorized() *DeleteGameBinaryRecordTTLConfigUnauthorized {
	return &DeleteGameBinaryRecordTTLConfigUnauthorized{}
}

/*DeleteGameBinaryRecordTTLConfigUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteGameBinaryRecordTTLConfigUnauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameBinaryRecordTTLConfigUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl][%d] deleteGameBinaryRecordTtlConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteGameBinaryRecordTTLConfigUnauthorized) ToJSONString() string {
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

func (o *DeleteGameBinaryRecordTTLConfigUnauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameBinaryRecordTTLConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteGameBinaryRecordTTLConfigForbidden creates a DeleteGameBinaryRecordTTLConfigForbidden with default headers values
func NewDeleteGameBinaryRecordTTLConfigForbidden() *DeleteGameBinaryRecordTTLConfigForbidden {
	return &DeleteGameBinaryRecordTTLConfigForbidden{}
}

/*DeleteGameBinaryRecordTTLConfigForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteGameBinaryRecordTTLConfigForbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameBinaryRecordTTLConfigForbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl][%d] deleteGameBinaryRecordTtlConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteGameBinaryRecordTTLConfigForbidden) ToJSONString() string {
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

func (o *DeleteGameBinaryRecordTTLConfigForbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameBinaryRecordTTLConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteGameBinaryRecordTTLConfigNotFound creates a DeleteGameBinaryRecordTTLConfigNotFound with default headers values
func NewDeleteGameBinaryRecordTTLConfigNotFound() *DeleteGameBinaryRecordTTLConfigNotFound {
	return &DeleteGameBinaryRecordTTLConfigNotFound{}
}

/*DeleteGameBinaryRecordTTLConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18317</td><td>record not found</td></tr></table>
*/
type DeleteGameBinaryRecordTTLConfigNotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameBinaryRecordTTLConfigNotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl][%d] deleteGameBinaryRecordTtlConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteGameBinaryRecordTTLConfigNotFound) ToJSONString() string {
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

func (o *DeleteGameBinaryRecordTTLConfigNotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameBinaryRecordTTLConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteGameBinaryRecordTTLConfigInternalServerError creates a DeleteGameBinaryRecordTTLConfigInternalServerError with default headers values
func NewDeleteGameBinaryRecordTTLConfigInternalServerError() *DeleteGameBinaryRecordTTLConfigInternalServerError {
	return &DeleteGameBinaryRecordTTLConfigInternalServerError{}
}

/*DeleteGameBinaryRecordTTLConfigInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18318</td><td>unable to update record</td></tr></table>
*/
type DeleteGameBinaryRecordTTLConfigInternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameBinaryRecordTTLConfigInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl][%d] deleteGameBinaryRecordTtlConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteGameBinaryRecordTTLConfigInternalServerError) ToJSONString() string {
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

func (o *DeleteGameBinaryRecordTTLConfigInternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameBinaryRecordTTLConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
