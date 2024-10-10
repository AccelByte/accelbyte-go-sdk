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

// DeleteGameRecordTTLConfigReader is a Reader for the DeleteGameRecordTTLConfig structure.
type DeleteGameRecordTTLConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteGameRecordTTLConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteGameRecordTTLConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteGameRecordTTLConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteGameRecordTTLConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteGameRecordTTLConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteGameRecordTTLConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteGameRecordTTLConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteGameRecordTTLConfigNoContent creates a DeleteGameRecordTTLConfigNoContent with default headers values
func NewDeleteGameRecordTTLConfigNoContent() *DeleteGameRecordTTLConfigNoContent {
	return &DeleteGameRecordTTLConfigNoContent{}
}

/*DeleteGameRecordTTLConfigNoContent handles this case with default header values.

  TTL config deleted
*/
type DeleteGameRecordTTLConfigNoContent struct {
}

func (o *DeleteGameRecordTTLConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl][%d] deleteGameRecordTtlConfigNoContent ", 204)
}

func (o *DeleteGameRecordTTLConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteGameRecordTTLConfigBadRequest creates a DeleteGameRecordTTLConfigBadRequest with default headers values
func NewDeleteGameRecordTTLConfigBadRequest() *DeleteGameRecordTTLConfigBadRequest {
	return &DeleteGameRecordTTLConfigBadRequest{}
}

/*DeleteGameRecordTTLConfigBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteGameRecordTTLConfigBadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameRecordTTLConfigBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl][%d] deleteGameRecordTtlConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteGameRecordTTLConfigBadRequest) ToJSONString() string {
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

func (o *DeleteGameRecordTTLConfigBadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameRecordTTLConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGameRecordTTLConfigUnauthorized creates a DeleteGameRecordTTLConfigUnauthorized with default headers values
func NewDeleteGameRecordTTLConfigUnauthorized() *DeleteGameRecordTTLConfigUnauthorized {
	return &DeleteGameRecordTTLConfigUnauthorized{}
}

/*DeleteGameRecordTTLConfigUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteGameRecordTTLConfigUnauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameRecordTTLConfigUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl][%d] deleteGameRecordTtlConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteGameRecordTTLConfigUnauthorized) ToJSONString() string {
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

func (o *DeleteGameRecordTTLConfigUnauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameRecordTTLConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGameRecordTTLConfigForbidden creates a DeleteGameRecordTTLConfigForbidden with default headers values
func NewDeleteGameRecordTTLConfigForbidden() *DeleteGameRecordTTLConfigForbidden {
	return &DeleteGameRecordTTLConfigForbidden{}
}

/*DeleteGameRecordTTLConfigForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteGameRecordTTLConfigForbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameRecordTTLConfigForbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl][%d] deleteGameRecordTtlConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteGameRecordTTLConfigForbidden) ToJSONString() string {
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

func (o *DeleteGameRecordTTLConfigForbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameRecordTTLConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGameRecordTTLConfigNotFound creates a DeleteGameRecordTTLConfigNotFound with default headers values
func NewDeleteGameRecordTTLConfigNotFound() *DeleteGameRecordTTLConfigNotFound {
	return &DeleteGameRecordTTLConfigNotFound{}
}

/*DeleteGameRecordTTLConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18003</td><td>record not found</td></tr></table>
*/
type DeleteGameRecordTTLConfigNotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameRecordTTLConfigNotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl][%d] deleteGameRecordTtlConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteGameRecordTTLConfigNotFound) ToJSONString() string {
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

func (o *DeleteGameRecordTTLConfigNotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameRecordTTLConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGameRecordTTLConfigInternalServerError creates a DeleteGameRecordTTLConfigInternalServerError with default headers values
func NewDeleteGameRecordTTLConfigInternalServerError() *DeleteGameRecordTTLConfigInternalServerError {
	return &DeleteGameRecordTTLConfigInternalServerError{}
}

/*DeleteGameRecordTTLConfigInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18053</td><td>unable to update record</td></tr></table>
*/
type DeleteGameRecordTTLConfigInternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameRecordTTLConfigInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl][%d] deleteGameRecordTtlConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteGameRecordTTLConfigInternalServerError) ToJSONString() string {
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

func (o *DeleteGameRecordTTLConfigInternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameRecordTTLConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
