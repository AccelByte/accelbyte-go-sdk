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

// AdminDeleteInventoryConfigurationReader is a Reader for the AdminDeleteInventoryConfiguration structure.
type AdminDeleteInventoryConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteInventoryConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteInventoryConfigurationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteInventoryConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteInventoryConfigurationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteInventoryConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteInventoryConfigurationNoContent creates a AdminDeleteInventoryConfigurationNoContent with default headers values
func NewAdminDeleteInventoryConfigurationNoContent() *AdminDeleteInventoryConfigurationNoContent {
	return &AdminDeleteInventoryConfigurationNoContent{}
}

/*AdminDeleteInventoryConfigurationNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteInventoryConfigurationNoContent struct {
}

func (o *AdminDeleteInventoryConfigurationNoContent) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminDeleteInventoryConfigurationNoContent ", 204)
}

func (o *AdminDeleteInventoryConfigurationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteInventoryConfigurationBadRequest creates a AdminDeleteInventoryConfigurationBadRequest with default headers values
func NewAdminDeleteInventoryConfigurationBadRequest() *AdminDeleteInventoryConfigurationBadRequest {
	return &AdminDeleteInventoryConfigurationBadRequest{}
}

/*AdminDeleteInventoryConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteInventoryConfigurationBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminDeleteInventoryConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminDeleteInventoryConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteInventoryConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminDeleteInventoryConfigurationBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminDeleteInventoryConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteInventoryConfigurationNotFound creates a AdminDeleteInventoryConfigurationNotFound with default headers values
func NewAdminDeleteInventoryConfigurationNotFound() *AdminDeleteInventoryConfigurationNotFound {
	return &AdminDeleteInventoryConfigurationNotFound{}
}

/*AdminDeleteInventoryConfigurationNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteInventoryConfigurationNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminDeleteInventoryConfigurationNotFound) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminDeleteInventoryConfigurationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteInventoryConfigurationNotFound) ToJSONString() string {
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

func (o *AdminDeleteInventoryConfigurationNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminDeleteInventoryConfigurationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteInventoryConfigurationInternalServerError creates a AdminDeleteInventoryConfigurationInternalServerError with default headers values
func NewAdminDeleteInventoryConfigurationInternalServerError() *AdminDeleteInventoryConfigurationInternalServerError {
	return &AdminDeleteInventoryConfigurationInternalServerError{}
}

/*AdminDeleteInventoryConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteInventoryConfigurationInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminDeleteInventoryConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminDeleteInventoryConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteInventoryConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteInventoryConfigurationInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminDeleteInventoryConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
