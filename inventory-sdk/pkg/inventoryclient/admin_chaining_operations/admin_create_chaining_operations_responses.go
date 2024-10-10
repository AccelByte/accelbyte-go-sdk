// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_chaining_operations

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

// AdminCreateChainingOperationsReader is a Reader for the AdminCreateChainingOperations structure.
type AdminCreateChainingOperationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateChainingOperationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminCreateChainingOperationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateChainingOperationsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateChainingOperationsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateChainingOperationsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminCreateChainingOperationsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateChainingOperationsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /inventory/v1/admin/namespaces/{namespace}/chainingOperations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateChainingOperationsOK creates a AdminCreateChainingOperationsOK with default headers values
func NewAdminCreateChainingOperationsOK() *AdminCreateChainingOperationsOK {
	return &AdminCreateChainingOperationsOK{}
}

/*AdminCreateChainingOperationsOK handles this case with default header values.

  OK
*/
type AdminCreateChainingOperationsOK struct {
	Payload *inventoryclientmodels.ApimodelsChainingOperationResp
}

func (o *AdminCreateChainingOperationsOK) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/chainingOperations][%d] adminCreateChainingOperationsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminCreateChainingOperationsOK) ToJSONString() string {
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

func (o *AdminCreateChainingOperationsOK) GetPayload() *inventoryclientmodels.ApimodelsChainingOperationResp {
	return o.Payload
}

func (o *AdminCreateChainingOperationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsChainingOperationResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateChainingOperationsBadRequest creates a AdminCreateChainingOperationsBadRequest with default headers values
func NewAdminCreateChainingOperationsBadRequest() *AdminCreateChainingOperationsBadRequest {
	return &AdminCreateChainingOperationsBadRequest{}
}

/*AdminCreateChainingOperationsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminCreateChainingOperationsBadRequest struct {
	Payload *inventoryclientmodels.ApimodelsChainingOperationResp
}

func (o *AdminCreateChainingOperationsBadRequest) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/chainingOperations][%d] adminCreateChainingOperationsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateChainingOperationsBadRequest) ToJSONString() string {
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

func (o *AdminCreateChainingOperationsBadRequest) GetPayload() *inventoryclientmodels.ApimodelsChainingOperationResp {
	return o.Payload
}

func (o *AdminCreateChainingOperationsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsChainingOperationResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateChainingOperationsUnauthorized creates a AdminCreateChainingOperationsUnauthorized with default headers values
func NewAdminCreateChainingOperationsUnauthorized() *AdminCreateChainingOperationsUnauthorized {
	return &AdminCreateChainingOperationsUnauthorized{}
}

/*AdminCreateChainingOperationsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminCreateChainingOperationsUnauthorized struct {
	Payload *inventoryclientmodels.ApimodelsChainingOperationResp
}

func (o *AdminCreateChainingOperationsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/chainingOperations][%d] adminCreateChainingOperationsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateChainingOperationsUnauthorized) ToJSONString() string {
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

func (o *AdminCreateChainingOperationsUnauthorized) GetPayload() *inventoryclientmodels.ApimodelsChainingOperationResp {
	return o.Payload
}

func (o *AdminCreateChainingOperationsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsChainingOperationResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateChainingOperationsForbidden creates a AdminCreateChainingOperationsForbidden with default headers values
func NewAdminCreateChainingOperationsForbidden() *AdminCreateChainingOperationsForbidden {
	return &AdminCreateChainingOperationsForbidden{}
}

/*AdminCreateChainingOperationsForbidden handles this case with default header values.

  Forbidden
*/
type AdminCreateChainingOperationsForbidden struct {
	Payload *inventoryclientmodels.ApimodelsChainingOperationResp
}

func (o *AdminCreateChainingOperationsForbidden) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/chainingOperations][%d] adminCreateChainingOperationsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateChainingOperationsForbidden) ToJSONString() string {
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

func (o *AdminCreateChainingOperationsForbidden) GetPayload() *inventoryclientmodels.ApimodelsChainingOperationResp {
	return o.Payload
}

func (o *AdminCreateChainingOperationsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsChainingOperationResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateChainingOperationsNotFound creates a AdminCreateChainingOperationsNotFound with default headers values
func NewAdminCreateChainingOperationsNotFound() *AdminCreateChainingOperationsNotFound {
	return &AdminCreateChainingOperationsNotFound{}
}

/*AdminCreateChainingOperationsNotFound handles this case with default header values.

  Not Found
*/
type AdminCreateChainingOperationsNotFound struct {
	Payload *inventoryclientmodels.ApimodelsChainingOperationResp
}

func (o *AdminCreateChainingOperationsNotFound) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/chainingOperations][%d] adminCreateChainingOperationsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminCreateChainingOperationsNotFound) ToJSONString() string {
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

func (o *AdminCreateChainingOperationsNotFound) GetPayload() *inventoryclientmodels.ApimodelsChainingOperationResp {
	return o.Payload
}

func (o *AdminCreateChainingOperationsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsChainingOperationResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateChainingOperationsInternalServerError creates a AdminCreateChainingOperationsInternalServerError with default headers values
func NewAdminCreateChainingOperationsInternalServerError() *AdminCreateChainingOperationsInternalServerError {
	return &AdminCreateChainingOperationsInternalServerError{}
}

/*AdminCreateChainingOperationsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCreateChainingOperationsInternalServerError struct {
	Payload *inventoryclientmodels.ApimodelsChainingOperationResp
}

func (o *AdminCreateChainingOperationsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /inventory/v1/admin/namespaces/{namespace}/chainingOperations][%d] adminCreateChainingOperationsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateChainingOperationsInternalServerError) ToJSONString() string {
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

func (o *AdminCreateChainingOperationsInternalServerError) GetPayload() *inventoryclientmodels.ApimodelsChainingOperationResp {
	return o.Payload
}

func (o *AdminCreateChainingOperationsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(inventoryclientmodels.ApimodelsChainingOperationResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
