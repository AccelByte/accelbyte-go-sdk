// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_inventory_configurations

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

// AdminListInventoryConfigurationsReader is a Reader for the AdminListInventoryConfigurations structure.
type AdminListInventoryConfigurationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListInventoryConfigurationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListInventoryConfigurationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListInventoryConfigurationsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListInventoryConfigurationsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListInventoryConfigurationsOK creates a AdminListInventoryConfigurationsOK with default headers values
func NewAdminListInventoryConfigurationsOK() *AdminListInventoryConfigurationsOK {
	return &AdminListInventoryConfigurationsOK{}
}

/*AdminListInventoryConfigurationsOK handles this case with default header values.

  OK
*/
type AdminListInventoryConfigurationsOK struct {
	Payload *inventoryclientmodels.ApimodelsListInventoryConfigurationsResp
}

func (o *AdminListInventoryConfigurationsOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations][%d] adminListInventoryConfigurationsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListInventoryConfigurationsOK) ToJSONString() string {
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

func (o *AdminListInventoryConfigurationsOK) GetPayload() *inventoryclientmodels.ApimodelsListInventoryConfigurationsResp {
	return o.Payload
}

func (o *AdminListInventoryConfigurationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsListInventoryConfigurationsResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListInventoryConfigurationsBadRequest creates a AdminListInventoryConfigurationsBadRequest with default headers values
func NewAdminListInventoryConfigurationsBadRequest() *AdminListInventoryConfigurationsBadRequest {
	return &AdminListInventoryConfigurationsBadRequest{}
}

/*AdminListInventoryConfigurationsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminListInventoryConfigurationsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminListInventoryConfigurationsBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations][%d] adminListInventoryConfigurationsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListInventoryConfigurationsBadRequest) ToJSONString() string {
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

func (o *AdminListInventoryConfigurationsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminListInventoryConfigurationsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListInventoryConfigurationsInternalServerError creates a AdminListInventoryConfigurationsInternalServerError with default headers values
func NewAdminListInventoryConfigurationsInternalServerError() *AdminListInventoryConfigurationsInternalServerError {
	return &AdminListInventoryConfigurationsInternalServerError{}
}

/*AdminListInventoryConfigurationsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListInventoryConfigurationsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminListInventoryConfigurationsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations][%d] adminListInventoryConfigurationsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListInventoryConfigurationsInternalServerError) ToJSONString() string {
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

func (o *AdminListInventoryConfigurationsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminListInventoryConfigurationsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
