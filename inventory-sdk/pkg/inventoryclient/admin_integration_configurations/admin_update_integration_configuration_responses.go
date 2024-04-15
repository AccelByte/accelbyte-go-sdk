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

// AdminUpdateIntegrationConfigurationReader is a Reader for the AdminUpdateIntegrationConfiguration structure.
type AdminUpdateIntegrationConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateIntegrationConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateIntegrationConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateIntegrationConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateIntegrationConfigurationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateIntegrationConfigurationConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateIntegrationConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateIntegrationConfigurationOK creates a AdminUpdateIntegrationConfigurationOK with default headers values
func NewAdminUpdateIntegrationConfigurationOK() *AdminUpdateIntegrationConfigurationOK {
	return &AdminUpdateIntegrationConfigurationOK{}
}

/*AdminUpdateIntegrationConfigurationOK handles this case with default header values.

  OK
*/
type AdminUpdateIntegrationConfigurationOK struct {
	Payload *inventoryclientmodels.ApimodelsIntegrationConfigurationResp
}

func (o *AdminUpdateIntegrationConfigurationOK) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}][%d] adminUpdateIntegrationConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateIntegrationConfigurationOK) ToJSONString() string {
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

func (o *AdminUpdateIntegrationConfigurationOK) GetPayload() *inventoryclientmodels.ApimodelsIntegrationConfigurationResp {
	return o.Payload
}

func (o *AdminUpdateIntegrationConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateIntegrationConfigurationBadRequest creates a AdminUpdateIntegrationConfigurationBadRequest with default headers values
func NewAdminUpdateIntegrationConfigurationBadRequest() *AdminUpdateIntegrationConfigurationBadRequest {
	return &AdminUpdateIntegrationConfigurationBadRequest{}
}

/*AdminUpdateIntegrationConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateIntegrationConfigurationBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateIntegrationConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}][%d] adminUpdateIntegrationConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateIntegrationConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminUpdateIntegrationConfigurationBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateIntegrationConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateIntegrationConfigurationNotFound creates a AdminUpdateIntegrationConfigurationNotFound with default headers values
func NewAdminUpdateIntegrationConfigurationNotFound() *AdminUpdateIntegrationConfigurationNotFound {
	return &AdminUpdateIntegrationConfigurationNotFound{}
}

/*AdminUpdateIntegrationConfigurationNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateIntegrationConfigurationNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateIntegrationConfigurationNotFound) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}][%d] adminUpdateIntegrationConfigurationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateIntegrationConfigurationNotFound) ToJSONString() string {
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

func (o *AdminUpdateIntegrationConfigurationNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateIntegrationConfigurationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateIntegrationConfigurationConflict creates a AdminUpdateIntegrationConfigurationConflict with default headers values
func NewAdminUpdateIntegrationConfigurationConflict() *AdminUpdateIntegrationConfigurationConflict {
	return &AdminUpdateIntegrationConfigurationConflict{}
}

/*AdminUpdateIntegrationConfigurationConflict handles this case with default header values.

  Conflict
*/
type AdminUpdateIntegrationConfigurationConflict struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateIntegrationConfigurationConflict) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}][%d] adminUpdateIntegrationConfigurationConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateIntegrationConfigurationConflict) ToJSONString() string {
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

func (o *AdminUpdateIntegrationConfigurationConflict) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateIntegrationConfigurationConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateIntegrationConfigurationInternalServerError creates a AdminUpdateIntegrationConfigurationInternalServerError with default headers values
func NewAdminUpdateIntegrationConfigurationInternalServerError() *AdminUpdateIntegrationConfigurationInternalServerError {
	return &AdminUpdateIntegrationConfigurationInternalServerError{}
}

/*AdminUpdateIntegrationConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateIntegrationConfigurationInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateIntegrationConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}][%d] adminUpdateIntegrationConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateIntegrationConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateIntegrationConfigurationInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateIntegrationConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
