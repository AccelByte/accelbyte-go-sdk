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

// AdminUpdateInventoryConfigurationReader is a Reader for the AdminUpdateInventoryConfiguration structure.
type AdminUpdateInventoryConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateInventoryConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateInventoryConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateInventoryConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateInventoryConfigurationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateInventoryConfigurationConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateInventoryConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateInventoryConfigurationOK creates a AdminUpdateInventoryConfigurationOK with default headers values
func NewAdminUpdateInventoryConfigurationOK() *AdminUpdateInventoryConfigurationOK {
	return &AdminUpdateInventoryConfigurationOK{}
}

/*AdminUpdateInventoryConfigurationOK handles this case with default header values.

  OK
*/
type AdminUpdateInventoryConfigurationOK struct {
	Payload *inventoryclientmodels.ApimodelsInventoryConfigurationResp
}

func (o *AdminUpdateInventoryConfigurationOK) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminUpdateInventoryConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateInventoryConfigurationOK) ToJSONString() string {
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

func (o *AdminUpdateInventoryConfigurationOK) GetPayload() *inventoryclientmodels.ApimodelsInventoryConfigurationResp {
	return o.Payload
}

func (o *AdminUpdateInventoryConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateInventoryConfigurationBadRequest creates a AdminUpdateInventoryConfigurationBadRequest with default headers values
func NewAdminUpdateInventoryConfigurationBadRequest() *AdminUpdateInventoryConfigurationBadRequest {
	return &AdminUpdateInventoryConfigurationBadRequest{}
}

/*AdminUpdateInventoryConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateInventoryConfigurationBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateInventoryConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminUpdateInventoryConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateInventoryConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminUpdateInventoryConfigurationBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateInventoryConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateInventoryConfigurationNotFound creates a AdminUpdateInventoryConfigurationNotFound with default headers values
func NewAdminUpdateInventoryConfigurationNotFound() *AdminUpdateInventoryConfigurationNotFound {
	return &AdminUpdateInventoryConfigurationNotFound{}
}

/*AdminUpdateInventoryConfigurationNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateInventoryConfigurationNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateInventoryConfigurationNotFound) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminUpdateInventoryConfigurationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateInventoryConfigurationNotFound) ToJSONString() string {
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

func (o *AdminUpdateInventoryConfigurationNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateInventoryConfigurationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateInventoryConfigurationConflict creates a AdminUpdateInventoryConfigurationConflict with default headers values
func NewAdminUpdateInventoryConfigurationConflict() *AdminUpdateInventoryConfigurationConflict {
	return &AdminUpdateInventoryConfigurationConflict{}
}

/*AdminUpdateInventoryConfigurationConflict handles this case with default header values.

  Conflict
*/
type AdminUpdateInventoryConfigurationConflict struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateInventoryConfigurationConflict) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminUpdateInventoryConfigurationConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateInventoryConfigurationConflict) ToJSONString() string {
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

func (o *AdminUpdateInventoryConfigurationConflict) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateInventoryConfigurationConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateInventoryConfigurationInternalServerError creates a AdminUpdateInventoryConfigurationInternalServerError with default headers values
func NewAdminUpdateInventoryConfigurationInternalServerError() *AdminUpdateInventoryConfigurationInternalServerError {
	return &AdminUpdateInventoryConfigurationInternalServerError{}
}

/*AdminUpdateInventoryConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateInventoryConfigurationInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateInventoryConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}][%d] adminUpdateInventoryConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateInventoryConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateInventoryConfigurationInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateInventoryConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
