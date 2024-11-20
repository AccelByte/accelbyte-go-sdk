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

// DeleteAdminGameRecordTTLConfigReader is a Reader for the DeleteAdminGameRecordTTLConfig structure.
type DeleteAdminGameRecordTTLConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteAdminGameRecordTTLConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteAdminGameRecordTTLConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteAdminGameRecordTTLConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteAdminGameRecordTTLConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteAdminGameRecordTTLConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteAdminGameRecordTTLConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteAdminGameRecordTTLConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}/ttl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteAdminGameRecordTTLConfigNoContent creates a DeleteAdminGameRecordTTLConfigNoContent with default headers values
func NewDeleteAdminGameRecordTTLConfigNoContent() *DeleteAdminGameRecordTTLConfigNoContent {
	return &DeleteAdminGameRecordTTLConfigNoContent{}
}

/*DeleteAdminGameRecordTTLConfigNoContent handles this case with default header values.

  TTL config deleted
*/
type DeleteAdminGameRecordTTLConfigNoContent struct {
}

func (o *DeleteAdminGameRecordTTLConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}/ttl][%d] deleteAdminGameRecordTtlConfigNoContent ", 204)
}

func (o *DeleteAdminGameRecordTTLConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteAdminGameRecordTTLConfigBadRequest creates a DeleteAdminGameRecordTTLConfigBadRequest with default headers values
func NewDeleteAdminGameRecordTTLConfigBadRequest() *DeleteAdminGameRecordTTLConfigBadRequest {
	return &DeleteAdminGameRecordTTLConfigBadRequest{}
}

/*DeleteAdminGameRecordTTLConfigBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteAdminGameRecordTTLConfigBadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteAdminGameRecordTTLConfigBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}/ttl][%d] deleteAdminGameRecordTtlConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteAdminGameRecordTTLConfigBadRequest) ToJSONString() string {
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

func (o *DeleteAdminGameRecordTTLConfigBadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteAdminGameRecordTTLConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAdminGameRecordTTLConfigUnauthorized creates a DeleteAdminGameRecordTTLConfigUnauthorized with default headers values
func NewDeleteAdminGameRecordTTLConfigUnauthorized() *DeleteAdminGameRecordTTLConfigUnauthorized {
	return &DeleteAdminGameRecordTTLConfigUnauthorized{}
}

/*DeleteAdminGameRecordTTLConfigUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteAdminGameRecordTTLConfigUnauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteAdminGameRecordTTLConfigUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}/ttl][%d] deleteAdminGameRecordTtlConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteAdminGameRecordTTLConfigUnauthorized) ToJSONString() string {
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

func (o *DeleteAdminGameRecordTTLConfigUnauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteAdminGameRecordTTLConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAdminGameRecordTTLConfigForbidden creates a DeleteAdminGameRecordTTLConfigForbidden with default headers values
func NewDeleteAdminGameRecordTTLConfigForbidden() *DeleteAdminGameRecordTTLConfigForbidden {
	return &DeleteAdminGameRecordTTLConfigForbidden{}
}

/*DeleteAdminGameRecordTTLConfigForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteAdminGameRecordTTLConfigForbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteAdminGameRecordTTLConfigForbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}/ttl][%d] deleteAdminGameRecordTtlConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteAdminGameRecordTTLConfigForbidden) ToJSONString() string {
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

func (o *DeleteAdminGameRecordTTLConfigForbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteAdminGameRecordTTLConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAdminGameRecordTTLConfigNotFound creates a DeleteAdminGameRecordTTLConfigNotFound with default headers values
func NewDeleteAdminGameRecordTTLConfigNotFound() *DeleteAdminGameRecordTTLConfigNotFound {
	return &DeleteAdminGameRecordTTLConfigNotFound{}
}

/*DeleteAdminGameRecordTTLConfigNotFound handles this case with default header values.


 */
type DeleteAdminGameRecordTTLConfigNotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteAdminGameRecordTTLConfigNotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}/ttl][%d] deleteAdminGameRecordTtlConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteAdminGameRecordTTLConfigNotFound) ToJSONString() string {
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

func (o *DeleteAdminGameRecordTTLConfigNotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteAdminGameRecordTTLConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteAdminGameRecordTTLConfigInternalServerError creates a DeleteAdminGameRecordTTLConfigInternalServerError with default headers values
func NewDeleteAdminGameRecordTTLConfigInternalServerError() *DeleteAdminGameRecordTTLConfigInternalServerError {
	return &DeleteAdminGameRecordTTLConfigInternalServerError{}
}

/*DeleteAdminGameRecordTTLConfigInternalServerError handles this case with default header values.


 */
type DeleteAdminGameRecordTTLConfigInternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteAdminGameRecordTTLConfigInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}/ttl][%d] deleteAdminGameRecordTtlConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteAdminGameRecordTTLConfigInternalServerError) ToJSONString() string {
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

func (o *DeleteAdminGameRecordTTLConfigInternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteAdminGameRecordTTLConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
