// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package plugin_config

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

// UpdatePluginConfigReader is a Reader for the UpdatePluginConfig structure.
type UpdatePluginConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePluginConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePluginConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePluginConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdatePluginConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdatePluginConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePluginConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdatePluginConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /cloudsave/v1/admin/namespaces/{namespace}/plugins returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePluginConfigOK creates a UpdatePluginConfigOK with default headers values
func NewUpdatePluginConfigOK() *UpdatePluginConfigOK {
	return &UpdatePluginConfigOK{}
}

/*UpdatePluginConfigOK handles this case with default header values.

  OK
*/
type UpdatePluginConfigOK struct {
	Payload *cloudsaveclientmodels.ModelsPluginResponse
}

func (o *UpdatePluginConfigOK) Error() string {
	return fmt.Sprintf("[PATCH /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] updatePluginConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePluginConfigOK) ToJSONString() string {
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

func (o *UpdatePluginConfigOK) GetPayload() *cloudsaveclientmodels.ModelsPluginResponse {
	return o.Payload
}

func (o *UpdatePluginConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPluginResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePluginConfigBadRequest creates a UpdatePluginConfigBadRequest with default headers values
func NewUpdatePluginConfigBadRequest() *UpdatePluginConfigBadRequest {
	return &UpdatePluginConfigBadRequest{}
}

/*UpdatePluginConfigBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18408</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdatePluginConfigBadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *UpdatePluginConfigBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] updatePluginConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePluginConfigBadRequest) ToJSONString() string {
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

func (o *UpdatePluginConfigBadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *UpdatePluginConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePluginConfigUnauthorized creates a UpdatePluginConfigUnauthorized with default headers values
func NewUpdatePluginConfigUnauthorized() *UpdatePluginConfigUnauthorized {
	return &UpdatePluginConfigUnauthorized{}
}

/*UpdatePluginConfigUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdatePluginConfigUnauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *UpdatePluginConfigUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] updatePluginConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdatePluginConfigUnauthorized) ToJSONString() string {
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

func (o *UpdatePluginConfigUnauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *UpdatePluginConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePluginConfigForbidden creates a UpdatePluginConfigForbidden with default headers values
func NewUpdatePluginConfigForbidden() *UpdatePluginConfigForbidden {
	return &UpdatePluginConfigForbidden{}
}

/*UpdatePluginConfigForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdatePluginConfigForbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *UpdatePluginConfigForbidden) Error() string {
	return fmt.Sprintf("[PATCH /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] updatePluginConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdatePluginConfigForbidden) ToJSONString() string {
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

func (o *UpdatePluginConfigForbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *UpdatePluginConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePluginConfigNotFound creates a UpdatePluginConfigNotFound with default headers values
func NewUpdatePluginConfigNotFound() *UpdatePluginConfigNotFound {
	return &UpdatePluginConfigNotFound{}
}

/*UpdatePluginConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18409</td><td>plugins config not found</td></tr></table>
*/
type UpdatePluginConfigNotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *UpdatePluginConfigNotFound) Error() string {
	return fmt.Sprintf("[PATCH /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] updatePluginConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePluginConfigNotFound) ToJSONString() string {
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

func (o *UpdatePluginConfigNotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *UpdatePluginConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePluginConfigInternalServerError creates a UpdatePluginConfigInternalServerError with default headers values
func NewUpdatePluginConfigInternalServerError() *UpdatePluginConfigInternalServerError {
	return &UpdatePluginConfigInternalServerError{}
}

/*UpdatePluginConfigInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type UpdatePluginConfigInternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *UpdatePluginConfigInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] updatePluginConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdatePluginConfigInternalServerError) ToJSONString() string {
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

func (o *UpdatePluginConfigInternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *UpdatePluginConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
