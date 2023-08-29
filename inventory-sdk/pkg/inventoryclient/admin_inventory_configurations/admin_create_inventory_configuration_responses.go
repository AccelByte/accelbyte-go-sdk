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

// AdminCreateInventoryConfigurationReader is a Reader for the AdminCreateInventoryConfiguration structure.
type AdminCreateInventoryConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateInventoryConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateInventoryConfigurationCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateInventoryConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateInventoryConfigurationConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateInventoryConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateInventoryConfigurationCreated creates a AdminCreateInventoryConfigurationCreated with default headers values
func NewAdminCreateInventoryConfigurationCreated() *AdminCreateInventoryConfigurationCreated {
	return &AdminCreateInventoryConfigurationCreated{}
}

/*AdminCreateInventoryConfigurationCreated handles this case with default header values.

  Created
*/
type AdminCreateInventoryConfigurationCreated struct {
	Payload *inventoryclientmodels.ApimodelsInventoryConfigurationResp
}

func (o *AdminCreateInventoryConfigurationCreated) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations][%d] adminCreateInventoryConfigurationCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateInventoryConfigurationCreated) ToJSONString() string {
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

func (o *AdminCreateInventoryConfigurationCreated) GetPayload() *inventoryclientmodels.ApimodelsInventoryConfigurationResp {
	return o.Payload
}

func (o *AdminCreateInventoryConfigurationCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateInventoryConfigurationBadRequest creates a AdminCreateInventoryConfigurationBadRequest with default headers values
func NewAdminCreateInventoryConfigurationBadRequest() *AdminCreateInventoryConfigurationBadRequest {
	return &AdminCreateInventoryConfigurationBadRequest{}
}

/*AdminCreateInventoryConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminCreateInventoryConfigurationBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminCreateInventoryConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations][%d] adminCreateInventoryConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateInventoryConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminCreateInventoryConfigurationBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminCreateInventoryConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateInventoryConfigurationConflict creates a AdminCreateInventoryConfigurationConflict with default headers values
func NewAdminCreateInventoryConfigurationConflict() *AdminCreateInventoryConfigurationConflict {
	return &AdminCreateInventoryConfigurationConflict{}
}

/*AdminCreateInventoryConfigurationConflict handles this case with default header values.

  Conflict
*/
type AdminCreateInventoryConfigurationConflict struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminCreateInventoryConfigurationConflict) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations][%d] adminCreateInventoryConfigurationConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateInventoryConfigurationConflict) ToJSONString() string {
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

func (o *AdminCreateInventoryConfigurationConflict) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminCreateInventoryConfigurationConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateInventoryConfigurationInternalServerError creates a AdminCreateInventoryConfigurationInternalServerError with default headers values
func NewAdminCreateInventoryConfigurationInternalServerError() *AdminCreateInventoryConfigurationInternalServerError {
	return &AdminCreateInventoryConfigurationInternalServerError{}
}

/*AdminCreateInventoryConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCreateInventoryConfigurationInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminCreateInventoryConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations][%d] adminCreateInventoryConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateInventoryConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminCreateInventoryConfigurationInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminCreateInventoryConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
