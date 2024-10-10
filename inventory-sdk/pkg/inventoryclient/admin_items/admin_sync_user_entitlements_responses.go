// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_items

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

// AdminSyncUserEntitlementsReader is a Reader for the AdminSyncUserEntitlements structure.
type AdminSyncUserEntitlementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSyncUserEntitlementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminSyncUserEntitlementsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSyncUserEntitlementsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSyncUserEntitlementsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSyncUserEntitlementsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSyncUserEntitlementsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSyncUserEntitlementsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSyncUserEntitlementsNoContent creates a AdminSyncUserEntitlementsNoContent with default headers values
func NewAdminSyncUserEntitlementsNoContent() *AdminSyncUserEntitlementsNoContent {
	return &AdminSyncUserEntitlementsNoContent{}
}

/*AdminSyncUserEntitlementsNoContent handles this case with default header values.

  No Content
*/
type AdminSyncUserEntitlementsNoContent struct {
}

func (o *AdminSyncUserEntitlementsNoContent) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync][%d] adminSyncUserEntitlementsNoContent ", 204)
}

func (o *AdminSyncUserEntitlementsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminSyncUserEntitlementsBadRequest creates a AdminSyncUserEntitlementsBadRequest with default headers values
func NewAdminSyncUserEntitlementsBadRequest() *AdminSyncUserEntitlementsBadRequest {
	return &AdminSyncUserEntitlementsBadRequest{}
}

/*AdminSyncUserEntitlementsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminSyncUserEntitlementsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminSyncUserEntitlementsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync][%d] adminSyncUserEntitlementsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSyncUserEntitlementsBadRequest) ToJSONString() string {
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

func (o *AdminSyncUserEntitlementsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminSyncUserEntitlementsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncUserEntitlementsUnauthorized creates a AdminSyncUserEntitlementsUnauthorized with default headers values
func NewAdminSyncUserEntitlementsUnauthorized() *AdminSyncUserEntitlementsUnauthorized {
	return &AdminSyncUserEntitlementsUnauthorized{}
}

/*AdminSyncUserEntitlementsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSyncUserEntitlementsUnauthorized struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminSyncUserEntitlementsUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync][%d] adminSyncUserEntitlementsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSyncUserEntitlementsUnauthorized) ToJSONString() string {
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

func (o *AdminSyncUserEntitlementsUnauthorized) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminSyncUserEntitlementsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncUserEntitlementsForbidden creates a AdminSyncUserEntitlementsForbidden with default headers values
func NewAdminSyncUserEntitlementsForbidden() *AdminSyncUserEntitlementsForbidden {
	return &AdminSyncUserEntitlementsForbidden{}
}

/*AdminSyncUserEntitlementsForbidden handles this case with default header values.

  Forbidden
*/
type AdminSyncUserEntitlementsForbidden struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminSyncUserEntitlementsForbidden) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync][%d] adminSyncUserEntitlementsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSyncUserEntitlementsForbidden) ToJSONString() string {
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

func (o *AdminSyncUserEntitlementsForbidden) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminSyncUserEntitlementsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncUserEntitlementsNotFound creates a AdminSyncUserEntitlementsNotFound with default headers values
func NewAdminSyncUserEntitlementsNotFound() *AdminSyncUserEntitlementsNotFound {
	return &AdminSyncUserEntitlementsNotFound{}
}

/*AdminSyncUserEntitlementsNotFound handles this case with default header values.

  Not Found
*/
type AdminSyncUserEntitlementsNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminSyncUserEntitlementsNotFound) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync][%d] adminSyncUserEntitlementsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSyncUserEntitlementsNotFound) ToJSONString() string {
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

func (o *AdminSyncUserEntitlementsNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminSyncUserEntitlementsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncUserEntitlementsInternalServerError creates a AdminSyncUserEntitlementsInternalServerError with default headers values
func NewAdminSyncUserEntitlementsInternalServerError() *AdminSyncUserEntitlementsInternalServerError {
	return &AdminSyncUserEntitlementsInternalServerError{}
}

/*AdminSyncUserEntitlementsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSyncUserEntitlementsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminSyncUserEntitlementsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync][%d] adminSyncUserEntitlementsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSyncUserEntitlementsInternalServerError) ToJSONString() string {
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

func (o *AdminSyncUserEntitlementsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminSyncUserEntitlementsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
