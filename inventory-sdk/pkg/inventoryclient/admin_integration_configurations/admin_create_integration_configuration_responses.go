// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_integration_configurations

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
)

// AdminCreateIntegrationConfigurationReader is a Reader for the AdminCreateIntegrationConfiguration structure.
type AdminCreateIntegrationConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateIntegrationConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateIntegrationConfigurationCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateIntegrationConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateIntegrationConfigurationConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateIntegrationConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateIntegrationConfigurationCreated creates a AdminCreateIntegrationConfigurationCreated with default headers values
func NewAdminCreateIntegrationConfigurationCreated() *AdminCreateIntegrationConfigurationCreated {
	return &AdminCreateIntegrationConfigurationCreated{}
}

/*AdminCreateIntegrationConfigurationCreated handles this case with default header values.

  Created
*/
type AdminCreateIntegrationConfigurationCreated struct {
	Payload *inventoryclientmodels.ApimodelsIntegrationConfigurationResp
}

func (o *AdminCreateIntegrationConfigurationCreated) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations][%d] adminCreateIntegrationConfigurationCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateIntegrationConfigurationCreated) ToJSONString() string {
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

func (o *AdminCreateIntegrationConfigurationCreated) GetPayload() *inventoryclientmodels.ApimodelsIntegrationConfigurationResp {
	return o.Payload
}

func (o *AdminCreateIntegrationConfigurationCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsIntegrationConfigurationResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateIntegrationConfigurationBadRequest creates a AdminCreateIntegrationConfigurationBadRequest with default headers values
func NewAdminCreateIntegrationConfigurationBadRequest() *AdminCreateIntegrationConfigurationBadRequest {
	return &AdminCreateIntegrationConfigurationBadRequest{}
}

/*AdminCreateIntegrationConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminCreateIntegrationConfigurationBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminCreateIntegrationConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations][%d] adminCreateIntegrationConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateIntegrationConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminCreateIntegrationConfigurationBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminCreateIntegrationConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateIntegrationConfigurationConflict creates a AdminCreateIntegrationConfigurationConflict with default headers values
func NewAdminCreateIntegrationConfigurationConflict() *AdminCreateIntegrationConfigurationConflict {
	return &AdminCreateIntegrationConfigurationConflict{}
}

/*AdminCreateIntegrationConfigurationConflict handles this case with default header values.

  Conflict
*/
type AdminCreateIntegrationConfigurationConflict struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminCreateIntegrationConfigurationConflict) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations][%d] adminCreateIntegrationConfigurationConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateIntegrationConfigurationConflict) ToJSONString() string {
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

func (o *AdminCreateIntegrationConfigurationConflict) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminCreateIntegrationConfigurationConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateIntegrationConfigurationInternalServerError creates a AdminCreateIntegrationConfigurationInternalServerError with default headers values
func NewAdminCreateIntegrationConfigurationInternalServerError() *AdminCreateIntegrationConfigurationInternalServerError {
	return &AdminCreateIntegrationConfigurationInternalServerError{}
}

/*AdminCreateIntegrationConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCreateIntegrationConfigurationInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminCreateIntegrationConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations][%d] adminCreateIntegrationConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateIntegrationConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminCreateIntegrationConfigurationInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminCreateIntegrationConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
