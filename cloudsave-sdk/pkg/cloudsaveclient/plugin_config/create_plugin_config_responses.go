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

// CreatePluginConfigReader is a Reader for the CreatePluginConfig structure.
type CreatePluginConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreatePluginConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreatePluginConfigCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreatePluginConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreatePluginConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreatePluginConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreatePluginConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreatePluginConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/plugins returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreatePluginConfigCreated creates a CreatePluginConfigCreated with default headers values
func NewCreatePluginConfigCreated() *CreatePluginConfigCreated {
	return &CreatePluginConfigCreated{}
}

/*CreatePluginConfigCreated handles this case with default header values.

  Created
*/
type CreatePluginConfigCreated struct {
	Payload *cloudsaveclientmodels.ModelsPluginResponse
}

func (o *CreatePluginConfigCreated) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] createPluginConfigCreated  %+v", 201, o.ToJSONString())
}

func (o *CreatePluginConfigCreated) ToJSONString() string {
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

func (o *CreatePluginConfigCreated) GetPayload() *cloudsaveclientmodels.ModelsPluginResponse {
	return o.Payload
}

func (o *CreatePluginConfigCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePluginConfigBadRequest creates a CreatePluginConfigBadRequest with default headers values
func NewCreatePluginConfigBadRequest() *CreatePluginConfigBadRequest {
	return &CreatePluginConfigBadRequest{}
}

/*CreatePluginConfigBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18401</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreatePluginConfigBadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *CreatePluginConfigBadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] createPluginConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreatePluginConfigBadRequest) ToJSONString() string {
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

func (o *CreatePluginConfigBadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *CreatePluginConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePluginConfigUnauthorized creates a CreatePluginConfigUnauthorized with default headers values
func NewCreatePluginConfigUnauthorized() *CreatePluginConfigUnauthorized {
	return &CreatePluginConfigUnauthorized{}
}

/*CreatePluginConfigUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CreatePluginConfigUnauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *CreatePluginConfigUnauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] createPluginConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreatePluginConfigUnauthorized) ToJSONString() string {
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

func (o *CreatePluginConfigUnauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *CreatePluginConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePluginConfigForbidden creates a CreatePluginConfigForbidden with default headers values
func NewCreatePluginConfigForbidden() *CreatePluginConfigForbidden {
	return &CreatePluginConfigForbidden{}
}

/*CreatePluginConfigForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type CreatePluginConfigForbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *CreatePluginConfigForbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] createPluginConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreatePluginConfigForbidden) ToJSONString() string {
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

func (o *CreatePluginConfigForbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *CreatePluginConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePluginConfigConflict creates a CreatePluginConfigConflict with default headers values
func NewCreatePluginConfigConflict() *CreatePluginConfigConflict {
	return &CreatePluginConfigConflict{}
}

/*CreatePluginConfigConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18402</td><td>plugins already configured</td></tr></table>
*/
type CreatePluginConfigConflict struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *CreatePluginConfigConflict) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] createPluginConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *CreatePluginConfigConflict) ToJSONString() string {
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

func (o *CreatePluginConfigConflict) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *CreatePluginConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePluginConfigInternalServerError creates a CreatePluginConfigInternalServerError with default headers values
func NewCreatePluginConfigInternalServerError() *CreatePluginConfigInternalServerError {
	return &CreatePluginConfigInternalServerError{}
}

/*CreatePluginConfigInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type CreatePluginConfigInternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *CreatePluginConfigInternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/plugins][%d] createPluginConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreatePluginConfigInternalServerError) ToJSONString() string {
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

func (o *CreatePluginConfigInternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *CreatePluginConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
