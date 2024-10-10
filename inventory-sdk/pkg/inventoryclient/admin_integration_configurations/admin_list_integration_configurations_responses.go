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

// AdminListIntegrationConfigurationsReader is a Reader for the AdminListIntegrationConfigurations structure.
type AdminListIntegrationConfigurationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListIntegrationConfigurationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListIntegrationConfigurationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListIntegrationConfigurationsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListIntegrationConfigurationsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListIntegrationConfigurationsOK creates a AdminListIntegrationConfigurationsOK with default headers values
func NewAdminListIntegrationConfigurationsOK() *AdminListIntegrationConfigurationsOK {
	return &AdminListIntegrationConfigurationsOK{}
}

/*AdminListIntegrationConfigurationsOK handles this case with default header values.

  OK
*/
type AdminListIntegrationConfigurationsOK struct {
	Payload *inventoryclientmodels.ApimodelsListIntegrationConfigurationsResp
}

func (o *AdminListIntegrationConfigurationsOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations][%d] adminListIntegrationConfigurationsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListIntegrationConfigurationsOK) ToJSONString() string {
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

func (o *AdminListIntegrationConfigurationsOK) GetPayload() *inventoryclientmodels.ApimodelsListIntegrationConfigurationsResp {
	return o.Payload
}

func (o *AdminListIntegrationConfigurationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsListIntegrationConfigurationsResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListIntegrationConfigurationsBadRequest creates a AdminListIntegrationConfigurationsBadRequest with default headers values
func NewAdminListIntegrationConfigurationsBadRequest() *AdminListIntegrationConfigurationsBadRequest {
	return &AdminListIntegrationConfigurationsBadRequest{}
}

/*AdminListIntegrationConfigurationsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminListIntegrationConfigurationsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminListIntegrationConfigurationsBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations][%d] adminListIntegrationConfigurationsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListIntegrationConfigurationsBadRequest) ToJSONString() string {
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

func (o *AdminListIntegrationConfigurationsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminListIntegrationConfigurationsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListIntegrationConfigurationsInternalServerError creates a AdminListIntegrationConfigurationsInternalServerError with default headers values
func NewAdminListIntegrationConfigurationsInternalServerError() *AdminListIntegrationConfigurationsInternalServerError {
	return &AdminListIntegrationConfigurationsInternalServerError{}
}

/*AdminListIntegrationConfigurationsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListIntegrationConfigurationsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminListIntegrationConfigurationsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations][%d] adminListIntegrationConfigurationsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListIntegrationConfigurationsInternalServerError) ToJSONString() string {
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

func (o *AdminListIntegrationConfigurationsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminListIntegrationConfigurationsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
