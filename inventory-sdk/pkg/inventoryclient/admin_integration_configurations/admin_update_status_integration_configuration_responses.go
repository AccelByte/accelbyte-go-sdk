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

// AdminUpdateStatusIntegrationConfigurationReader is a Reader for the AdminUpdateStatusIntegrationConfiguration structure.
type AdminUpdateStatusIntegrationConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateStatusIntegrationConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateStatusIntegrationConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateStatusIntegrationConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateStatusIntegrationConfigurationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateStatusIntegrationConfigurationConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateStatusIntegrationConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateStatusIntegrationConfigurationOK creates a AdminUpdateStatusIntegrationConfigurationOK with default headers values
func NewAdminUpdateStatusIntegrationConfigurationOK() *AdminUpdateStatusIntegrationConfigurationOK {
	return &AdminUpdateStatusIntegrationConfigurationOK{}
}

/*AdminUpdateStatusIntegrationConfigurationOK handles this case with default header values.

  OK
*/
type AdminUpdateStatusIntegrationConfigurationOK struct {
	Payload *inventoryclientmodels.ApimodelsIntegrationConfigurationResp
}

func (o *AdminUpdateStatusIntegrationConfigurationOK) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status][%d] adminUpdateStatusIntegrationConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateStatusIntegrationConfigurationOK) ToJSONString() string {
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

func (o *AdminUpdateStatusIntegrationConfigurationOK) GetPayload() *inventoryclientmodels.ApimodelsIntegrationConfigurationResp {
	return o.Payload
}

func (o *AdminUpdateStatusIntegrationConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateStatusIntegrationConfigurationBadRequest creates a AdminUpdateStatusIntegrationConfigurationBadRequest with default headers values
func NewAdminUpdateStatusIntegrationConfigurationBadRequest() *AdminUpdateStatusIntegrationConfigurationBadRequest {
	return &AdminUpdateStatusIntegrationConfigurationBadRequest{}
}

/*AdminUpdateStatusIntegrationConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateStatusIntegrationConfigurationBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateStatusIntegrationConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status][%d] adminUpdateStatusIntegrationConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateStatusIntegrationConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminUpdateStatusIntegrationConfigurationBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateStatusIntegrationConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateStatusIntegrationConfigurationNotFound creates a AdminUpdateStatusIntegrationConfigurationNotFound with default headers values
func NewAdminUpdateStatusIntegrationConfigurationNotFound() *AdminUpdateStatusIntegrationConfigurationNotFound {
	return &AdminUpdateStatusIntegrationConfigurationNotFound{}
}

/*AdminUpdateStatusIntegrationConfigurationNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateStatusIntegrationConfigurationNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateStatusIntegrationConfigurationNotFound) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status][%d] adminUpdateStatusIntegrationConfigurationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateStatusIntegrationConfigurationNotFound) ToJSONString() string {
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

func (o *AdminUpdateStatusIntegrationConfigurationNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateStatusIntegrationConfigurationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateStatusIntegrationConfigurationConflict creates a AdminUpdateStatusIntegrationConfigurationConflict with default headers values
func NewAdminUpdateStatusIntegrationConfigurationConflict() *AdminUpdateStatusIntegrationConfigurationConflict {
	return &AdminUpdateStatusIntegrationConfigurationConflict{}
}

/*AdminUpdateStatusIntegrationConfigurationConflict handles this case with default header values.

  Conflict
*/
type AdminUpdateStatusIntegrationConfigurationConflict struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateStatusIntegrationConfigurationConflict) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status][%d] adminUpdateStatusIntegrationConfigurationConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateStatusIntegrationConfigurationConflict) ToJSONString() string {
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

func (o *AdminUpdateStatusIntegrationConfigurationConflict) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateStatusIntegrationConfigurationConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateStatusIntegrationConfigurationInternalServerError creates a AdminUpdateStatusIntegrationConfigurationInternalServerError with default headers values
func NewAdminUpdateStatusIntegrationConfigurationInternalServerError() *AdminUpdateStatusIntegrationConfigurationInternalServerError {
	return &AdminUpdateStatusIntegrationConfigurationInternalServerError{}
}

/*AdminUpdateStatusIntegrationConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateStatusIntegrationConfigurationInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateStatusIntegrationConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status][%d] adminUpdateStatusIntegrationConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateStatusIntegrationConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateStatusIntegrationConfigurationInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateStatusIntegrationConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
