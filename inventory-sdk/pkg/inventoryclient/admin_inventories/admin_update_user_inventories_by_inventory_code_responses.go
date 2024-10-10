// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_inventories

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

// AdminUpdateUserInventoriesByInventoryCodeReader is a Reader for the AdminUpdateUserInventoriesByInventoryCode structure.
type AdminUpdateUserInventoriesByInventoryCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateUserInventoriesByInventoryCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateUserInventoriesByInventoryCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateUserInventoriesByInventoryCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateUserInventoriesByInventoryCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateUserInventoriesByInventoryCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateUserInventoriesByInventoryCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateUserInventoriesByInventoryCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateUserInventoriesByInventoryCodeOK creates a AdminUpdateUserInventoriesByInventoryCodeOK with default headers values
func NewAdminUpdateUserInventoriesByInventoryCodeOK() *AdminUpdateUserInventoriesByInventoryCodeOK {
	return &AdminUpdateUserInventoriesByInventoryCodeOK{}
}

/*AdminUpdateUserInventoriesByInventoryCodeOK handles this case with default header values.

  OK
*/
type AdminUpdateUserInventoriesByInventoryCodeOK struct {
	Payload []*inventoryclientmodels.ApimodelsInventoryResp
}

func (o *AdminUpdateUserInventoriesByInventoryCodeOK) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories][%d] adminUpdateUserInventoriesByInventoryCodeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateUserInventoriesByInventoryCodeOK) ToJSONString() string {
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

func (o *AdminUpdateUserInventoriesByInventoryCodeOK) GetPayload() []*inventoryclientmodels.ApimodelsInventoryResp {
	return o.Payload
}

func (o *AdminUpdateUserInventoriesByInventoryCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateUserInventoriesByInventoryCodeBadRequest creates a AdminUpdateUserInventoriesByInventoryCodeBadRequest with default headers values
func NewAdminUpdateUserInventoriesByInventoryCodeBadRequest() *AdminUpdateUserInventoriesByInventoryCodeBadRequest {
	return &AdminUpdateUserInventoriesByInventoryCodeBadRequest{}
}

/*AdminUpdateUserInventoriesByInventoryCodeBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateUserInventoriesByInventoryCodeBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateUserInventoriesByInventoryCodeBadRequest) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories][%d] adminUpdateUserInventoriesByInventoryCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateUserInventoriesByInventoryCodeBadRequest) ToJSONString() string {
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

func (o *AdminUpdateUserInventoriesByInventoryCodeBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserInventoriesByInventoryCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserInventoriesByInventoryCodeUnauthorized creates a AdminUpdateUserInventoriesByInventoryCodeUnauthorized with default headers values
func NewAdminUpdateUserInventoriesByInventoryCodeUnauthorized() *AdminUpdateUserInventoriesByInventoryCodeUnauthorized {
	return &AdminUpdateUserInventoriesByInventoryCodeUnauthorized{}
}

/*AdminUpdateUserInventoriesByInventoryCodeUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateUserInventoriesByInventoryCodeUnauthorized struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateUserInventoriesByInventoryCodeUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories][%d] adminUpdateUserInventoriesByInventoryCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateUserInventoriesByInventoryCodeUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateUserInventoriesByInventoryCodeUnauthorized) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserInventoriesByInventoryCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserInventoriesByInventoryCodeForbidden creates a AdminUpdateUserInventoriesByInventoryCodeForbidden with default headers values
func NewAdminUpdateUserInventoriesByInventoryCodeForbidden() *AdminUpdateUserInventoriesByInventoryCodeForbidden {
	return &AdminUpdateUserInventoriesByInventoryCodeForbidden{}
}

/*AdminUpdateUserInventoriesByInventoryCodeForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateUserInventoriesByInventoryCodeForbidden struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateUserInventoriesByInventoryCodeForbidden) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories][%d] adminUpdateUserInventoriesByInventoryCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateUserInventoriesByInventoryCodeForbidden) ToJSONString() string {
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

func (o *AdminUpdateUserInventoriesByInventoryCodeForbidden) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserInventoriesByInventoryCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserInventoriesByInventoryCodeNotFound creates a AdminUpdateUserInventoriesByInventoryCodeNotFound with default headers values
func NewAdminUpdateUserInventoriesByInventoryCodeNotFound() *AdminUpdateUserInventoriesByInventoryCodeNotFound {
	return &AdminUpdateUserInventoriesByInventoryCodeNotFound{}
}

/*AdminUpdateUserInventoriesByInventoryCodeNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateUserInventoriesByInventoryCodeNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateUserInventoriesByInventoryCodeNotFound) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories][%d] adminUpdateUserInventoriesByInventoryCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateUserInventoriesByInventoryCodeNotFound) ToJSONString() string {
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

func (o *AdminUpdateUserInventoriesByInventoryCodeNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserInventoriesByInventoryCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserInventoriesByInventoryCodeInternalServerError creates a AdminUpdateUserInventoriesByInventoryCodeInternalServerError with default headers values
func NewAdminUpdateUserInventoriesByInventoryCodeInternalServerError() *AdminUpdateUserInventoriesByInventoryCodeInternalServerError {
	return &AdminUpdateUserInventoriesByInventoryCodeInternalServerError{}
}

/*AdminUpdateUserInventoriesByInventoryCodeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateUserInventoriesByInventoryCodeInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminUpdateUserInventoriesByInventoryCodeInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories][%d] adminUpdateUserInventoriesByInventoryCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateUserInventoriesByInventoryCodeInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateUserInventoriesByInventoryCodeInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserInventoriesByInventoryCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
