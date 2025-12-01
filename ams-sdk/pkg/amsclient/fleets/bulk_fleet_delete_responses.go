// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fleets

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// BulkFleetDeleteReader is a Reader for the BulkFleetDelete structure.
type BulkFleetDeleteReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkFleetDeleteReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkFleetDeleteOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 207:
		result := NewBulkFleetDeleteMultiStatus()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkFleetDeleteBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkFleetDeleteUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkFleetDeleteForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkFleetDeleteUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkFleetDeleteInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ams/v1/admin/namespaces/{namespace}/fleets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkFleetDeleteOK creates a BulkFleetDeleteOK with default headers values
func NewBulkFleetDeleteOK() *BulkFleetDeleteOK {
	return &BulkFleetDeleteOK{}
}

/*BulkFleetDeleteOK handles this case with default header values.

  success
*/
type BulkFleetDeleteOK struct {
	Payload *amsclientmodels.APIFleetBulkDeleteResponse
}

func (o *BulkFleetDeleteOK) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/fleets][%d] bulkFleetDeleteOK  %+v", 200, o.ToJSONString())
}

func (o *BulkFleetDeleteOK) ToJSONString() string {
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

func (o *BulkFleetDeleteOK) GetPayload() *amsclientmodels.APIFleetBulkDeleteResponse {
	return o.Payload
}

func (o *BulkFleetDeleteOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIFleetBulkDeleteResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFleetDeleteMultiStatus creates a BulkFleetDeleteMultiStatus with default headers values
func NewBulkFleetDeleteMultiStatus() *BulkFleetDeleteMultiStatus {
	return &BulkFleetDeleteMultiStatus{}
}

/*BulkFleetDeleteMultiStatus handles this case with default header values.

  partial success
*/
type BulkFleetDeleteMultiStatus struct {
	Payload *amsclientmodels.APIFleetBulkDeleteResponse
}

func (o *BulkFleetDeleteMultiStatus) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/fleets][%d] bulkFleetDeleteMultiStatus  %+v", 207, o.ToJSONString())
}

func (o *BulkFleetDeleteMultiStatus) ToJSONString() string {
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

func (o *BulkFleetDeleteMultiStatus) GetPayload() *amsclientmodels.APIFleetBulkDeleteResponse {
	return o.Payload
}

func (o *BulkFleetDeleteMultiStatus) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIFleetBulkDeleteResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFleetDeleteBadRequest creates a BulkFleetDeleteBadRequest with default headers values
func NewBulkFleetDeleteBadRequest() *BulkFleetDeleteBadRequest {
	return &BulkFleetDeleteBadRequest{}
}

/*BulkFleetDeleteBadRequest handles this case with default header values.

  bad request
*/
type BulkFleetDeleteBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *BulkFleetDeleteBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/fleets][%d] bulkFleetDeleteBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkFleetDeleteBadRequest) ToJSONString() string {
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

func (o *BulkFleetDeleteBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkFleetDeleteBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFleetDeleteUnauthorized creates a BulkFleetDeleteUnauthorized with default headers values
func NewBulkFleetDeleteUnauthorized() *BulkFleetDeleteUnauthorized {
	return &BulkFleetDeleteUnauthorized{}
}

/*BulkFleetDeleteUnauthorized handles this case with default header values.

  no authorization provided
*/
type BulkFleetDeleteUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *BulkFleetDeleteUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/fleets][%d] bulkFleetDeleteUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkFleetDeleteUnauthorized) ToJSONString() string {
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

func (o *BulkFleetDeleteUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkFleetDeleteUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFleetDeleteForbidden creates a BulkFleetDeleteForbidden with default headers values
func NewBulkFleetDeleteForbidden() *BulkFleetDeleteForbidden {
	return &BulkFleetDeleteForbidden{}
}

/*BulkFleetDeleteForbidden handles this case with default header values.

  insufficient permissions
*/
type BulkFleetDeleteForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *BulkFleetDeleteForbidden) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/fleets][%d] bulkFleetDeleteForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkFleetDeleteForbidden) ToJSONString() string {
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

func (o *BulkFleetDeleteForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkFleetDeleteForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFleetDeleteUnprocessableEntity creates a BulkFleetDeleteUnprocessableEntity with default headers values
func NewBulkFleetDeleteUnprocessableEntity() *BulkFleetDeleteUnprocessableEntity {
	return &BulkFleetDeleteUnprocessableEntity{}
}

/*BulkFleetDeleteUnprocessableEntity handles this case with default header values.

  one or more fleet(s) are invalid
*/
type BulkFleetDeleteUnprocessableEntity struct {
	Payload *amsclientmodels.APIFleetBulkDeleteResponse
}

func (o *BulkFleetDeleteUnprocessableEntity) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/fleets][%d] bulkFleetDeleteUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkFleetDeleteUnprocessableEntity) ToJSONString() string {
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

func (o *BulkFleetDeleteUnprocessableEntity) GetPayload() *amsclientmodels.APIFleetBulkDeleteResponse {
	return o.Payload
}

func (o *BulkFleetDeleteUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIFleetBulkDeleteResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFleetDeleteInternalServerError creates a BulkFleetDeleteInternalServerError with default headers values
func NewBulkFleetDeleteInternalServerError() *BulkFleetDeleteInternalServerError {
	return &BulkFleetDeleteInternalServerError{}
}

/*BulkFleetDeleteInternalServerError handles this case with default header values.

  internal server error
*/
type BulkFleetDeleteInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *BulkFleetDeleteInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/fleets][%d] bulkFleetDeleteInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkFleetDeleteInternalServerError) ToJSONString() string {
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

func (o *BulkFleetDeleteInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkFleetDeleteInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
