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

// AdminPurchasableReader is a Reader for the AdminPurchasable structure.
type AdminPurchasableReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPurchasableReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminPurchasableNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPurchasableBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminPurchasableNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminPurchasableConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPurchasableInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPurchasableNoContent creates a AdminPurchasableNoContent with default headers values
func NewAdminPurchasableNoContent() *AdminPurchasableNoContent {
	return &AdminPurchasableNoContent{}
}

/*AdminPurchasableNoContent handles this case with default header values.

  No Content
*/
type AdminPurchasableNoContent struct {
}

func (o *AdminPurchasableNoContent) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable][%d] adminPurchasableNoContent ", 204)
}

func (o *AdminPurchasableNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPurchasableBadRequest creates a AdminPurchasableBadRequest with default headers values
func NewAdminPurchasableBadRequest() *AdminPurchasableBadRequest {
	return &AdminPurchasableBadRequest{}
}

/*AdminPurchasableBadRequest handles this case with default header values.

  Bad Request
*/
type AdminPurchasableBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminPurchasableBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable][%d] adminPurchasableBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPurchasableBadRequest) ToJSONString() string {
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

func (o *AdminPurchasableBadRequest) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminPurchasableBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPurchasableNotFound creates a AdminPurchasableNotFound with default headers values
func NewAdminPurchasableNotFound() *AdminPurchasableNotFound {
	return &AdminPurchasableNotFound{}
}

/*AdminPurchasableNotFound handles this case with default header values.

  Not Found
*/
type AdminPurchasableNotFound struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminPurchasableNotFound) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable][%d] adminPurchasableNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminPurchasableNotFound) ToJSONString() string {
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

func (o *AdminPurchasableNotFound) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminPurchasableNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPurchasableConflict creates a AdminPurchasableConflict with default headers values
func NewAdminPurchasableConflict() *AdminPurchasableConflict {
	return &AdminPurchasableConflict{}
}

/*AdminPurchasableConflict handles this case with default header values.

  Conflict
*/
type AdminPurchasableConflict struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminPurchasableConflict) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable][%d] adminPurchasableConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminPurchasableConflict) ToJSONString() string {
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

func (o *AdminPurchasableConflict) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminPurchasableConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPurchasableInternalServerError creates a AdminPurchasableInternalServerError with default headers values
func NewAdminPurchasableInternalServerError() *AdminPurchasableInternalServerError {
	return &AdminPurchasableInternalServerError{}
}

/*AdminPurchasableInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminPurchasableInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsErrorResponse
}

func (o *AdminPurchasableInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable][%d] adminPurchasableInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPurchasableInternalServerError) ToJSONString() string {
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

func (o *AdminPurchasableInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsErrorResponse {
	return o.Payload
}

func (o *AdminPurchasableInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
