// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// BulkAddStatsReader is a Reader for the BulkAddStats structure.
type BulkAddStatsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkAddStatsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkAddStatsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkAddStatsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkAddStatsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkAddStatsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBulkAddStatsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkAddStatsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkAddStatsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkAddStatsOK creates a BulkAddStatsOK with default headers values
func NewBulkAddStatsOK() *BulkAddStatsOK {
	return &BulkAddStatsOK{}
}

/*BulkAddStatsOK handles this case with default header values.

  successful operation
*/
type BulkAddStatsOK struct {
	Payload []*socialclientmodels.BulkStatCycleOperationResult
}

func (o *BulkAddStatsOK) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk][%d] bulkAddStatsOK  %+v", 200, o.ToJSONString())
}

func (o *BulkAddStatsOK) ToJSONString() string {
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

func (o *BulkAddStatsOK) GetPayload() []*socialclientmodels.BulkStatCycleOperationResult {
	return o.Payload
}

func (o *BulkAddStatsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkAddStatsBadRequest creates a BulkAddStatsBadRequest with default headers values
func NewBulkAddStatsBadRequest() *BulkAddStatsBadRequest {
	return &BulkAddStatsBadRequest{}
}

/*BulkAddStatsBadRequest handles this case with default header values.

  Bad request
*/
type BulkAddStatsBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkAddStatsBadRequest) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk][%d] bulkAddStatsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkAddStatsBadRequest) ToJSONString() string {
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

func (o *BulkAddStatsBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkAddStatsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkAddStatsUnauthorized creates a BulkAddStatsUnauthorized with default headers values
func NewBulkAddStatsUnauthorized() *BulkAddStatsUnauthorized {
	return &BulkAddStatsUnauthorized{}
}

/*BulkAddStatsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkAddStatsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkAddStatsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk][%d] bulkAddStatsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkAddStatsUnauthorized) ToJSONString() string {
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

func (o *BulkAddStatsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkAddStatsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkAddStatsForbidden creates a BulkAddStatsForbidden with default headers values
func NewBulkAddStatsForbidden() *BulkAddStatsForbidden {
	return &BulkAddStatsForbidden{}
}

/*BulkAddStatsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkAddStatsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkAddStatsForbidden) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk][%d] bulkAddStatsForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkAddStatsForbidden) ToJSONString() string {
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

func (o *BulkAddStatsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkAddStatsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkAddStatsNotFound creates a BulkAddStatsNotFound with default headers values
func NewBulkAddStatsNotFound() *BulkAddStatsNotFound {
	return &BulkAddStatsNotFound{}
}

/*BulkAddStatsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type BulkAddStatsNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkAddStatsNotFound) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk][%d] bulkAddStatsNotFound  %+v", 404, o.ToJSONString())
}

func (o *BulkAddStatsNotFound) ToJSONString() string {
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

func (o *BulkAddStatsNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkAddStatsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkAddStatsUnprocessableEntity creates a BulkAddStatsUnprocessableEntity with default headers values
func NewBulkAddStatsUnprocessableEntity() *BulkAddStatsUnprocessableEntity {
	return &BulkAddStatsUnprocessableEntity{}
}

/*BulkAddStatsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkAddStatsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkAddStatsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk][%d] bulkAddStatsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkAddStatsUnprocessableEntity) ToJSONString() string {
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

func (o *BulkAddStatsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkAddStatsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkAddStatsInternalServerError creates a BulkAddStatsInternalServerError with default headers values
func NewBulkAddStatsInternalServerError() *BulkAddStatsInternalServerError {
	return &BulkAddStatsInternalServerError{}
}

/*BulkAddStatsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkAddStatsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkAddStatsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk][%d] bulkAddStatsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkAddStatsInternalServerError) ToJSONString() string {
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

func (o *BulkAddStatsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkAddStatsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
