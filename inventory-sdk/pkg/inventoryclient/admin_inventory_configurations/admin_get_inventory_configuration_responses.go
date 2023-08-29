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

// AdminGetInventoryConfigurationReader is a Reader for the AdminGetInventoryConfiguration structure.
type AdminGetInventoryConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetInventoryConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetInventoryConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetInventoryConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetInventoryConfigurationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetInventoryConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetInventoryConfigurationOK creates a AdminGetInventoryConfigurationOK with default headers values
func NewAdminGetInventoryConfigurationOK() *AdminGetInventoryConfigurationOK {
	return &AdminGetInventoryConfigurationOK{}
}

/*AdminGetInventoryConfigurationOK handles this case with default header values.

  OK
*/
type AdminGetInventoryConfigurationOK struct {
	Payload *inventoryclientmodels.ApimodelsInventoryConfigurationResp
}

func (o *AdminGetInventoryConfigurationOK) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminGetInventoryConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetInventoryConfigurationOK) ToJSONString() string {
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

func (o *AdminGetInventoryConfigurationOK) GetPayload() *inventoryclientmodels.ApimodelsInventoryConfigurationResp {
	return o.Payload
}

func (o *AdminGetInventoryConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsInventoryConfigurationResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetInventoryConfigurationBadRequest creates a AdminGetInventoryConfigurationBadRequest with default headers values
func NewAdminGetInventoryConfigurationBadRequest() *AdminGetInventoryConfigurationBadRequest {
	return &AdminGetInventoryConfigurationBadRequest{}
}

/*AdminGetInventoryConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetInventoryConfigurationBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminGetInventoryConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminGetInventoryConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetInventoryConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminGetInventoryConfigurationBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminGetInventoryConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetInventoryConfigurationNotFound creates a AdminGetInventoryConfigurationNotFound with default headers values
func NewAdminGetInventoryConfigurationNotFound() *AdminGetInventoryConfigurationNotFound {
	return &AdminGetInventoryConfigurationNotFound{}
}

/*AdminGetInventoryConfigurationNotFound handles this case with default header values.

  Not Found
*/
type AdminGetInventoryConfigurationNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminGetInventoryConfigurationNotFound) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminGetInventoryConfigurationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetInventoryConfigurationNotFound) ToJSONString() string {
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

func (o *AdminGetInventoryConfigurationNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminGetInventoryConfigurationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetInventoryConfigurationInternalServerError creates a AdminGetInventoryConfigurationInternalServerError with default headers values
func NewAdminGetInventoryConfigurationInternalServerError() *AdminGetInventoryConfigurationInternalServerError {
	return &AdminGetInventoryConfigurationInternalServerError{}
}

/*AdminGetInventoryConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetInventoryConfigurationInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminGetInventoryConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[GET /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminGetInventoryConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetInventoryConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminGetInventoryConfigurationInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminGetInventoryConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
