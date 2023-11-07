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

// BulkGetStatCycleReader is a Reader for the BulkGetStatCycle structure.
type BulkGetStatCycleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetStatCycleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetStatCycleOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkGetStatCycleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkGetStatCycleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkGetStatCycleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkGetStatCycleUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkGetStatCycleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/admin/namespaces/{namespace}/statCycles/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetStatCycleOK creates a BulkGetStatCycleOK with default headers values
func NewBulkGetStatCycleOK() *BulkGetStatCycleOK {
	return &BulkGetStatCycleOK{}
}

/*BulkGetStatCycleOK handles this case with default header values.

  successful operation
*/
type BulkGetStatCycleOK struct {
	Payload *socialclientmodels.BulkStatCycleResult
}

func (o *BulkGetStatCycleOK) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycleOK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetStatCycleOK) ToJSONString() string {
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

func (o *BulkGetStatCycleOK) GetPayload() *socialclientmodels.BulkStatCycleResult {
	return o.Payload
}

func (o *BulkGetStatCycleOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.BulkStatCycleResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetStatCycleBadRequest creates a BulkGetStatCycleBadRequest with default headers values
func NewBulkGetStatCycleBadRequest() *BulkGetStatCycleBadRequest {
	return &BulkGetStatCycleBadRequest{}
}

/*BulkGetStatCycleBadRequest handles this case with default header values.

  Bad request
*/
type BulkGetStatCycleBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetStatCycleBadRequest) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkGetStatCycleBadRequest) ToJSONString() string {
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

func (o *BulkGetStatCycleBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetStatCycleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetStatCycleUnauthorized creates a BulkGetStatCycleUnauthorized with default headers values
func NewBulkGetStatCycleUnauthorized() *BulkGetStatCycleUnauthorized {
	return &BulkGetStatCycleUnauthorized{}
}

/*BulkGetStatCycleUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkGetStatCycleUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetStatCycleUnauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkGetStatCycleUnauthorized) ToJSONString() string {
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

func (o *BulkGetStatCycleUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetStatCycleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetStatCycleForbidden creates a BulkGetStatCycleForbidden with default headers values
func NewBulkGetStatCycleForbidden() *BulkGetStatCycleForbidden {
	return &BulkGetStatCycleForbidden{}
}

/*BulkGetStatCycleForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkGetStatCycleForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetStatCycleForbidden) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycleForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkGetStatCycleForbidden) ToJSONString() string {
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

func (o *BulkGetStatCycleForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetStatCycleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetStatCycleUnprocessableEntity creates a BulkGetStatCycleUnprocessableEntity with default headers values
func NewBulkGetStatCycleUnprocessableEntity() *BulkGetStatCycleUnprocessableEntity {
	return &BulkGetStatCycleUnprocessableEntity{}
}

/*BulkGetStatCycleUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkGetStatCycleUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkGetStatCycleUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycleUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkGetStatCycleUnprocessableEntity) ToJSONString() string {
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

func (o *BulkGetStatCycleUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkGetStatCycleUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetStatCycleInternalServerError creates a BulkGetStatCycleInternalServerError with default headers values
func NewBulkGetStatCycleInternalServerError() *BulkGetStatCycleInternalServerError {
	return &BulkGetStatCycleInternalServerError{}
}

/*BulkGetStatCycleInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkGetStatCycleInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetStatCycleInternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkGetStatCycleInternalServerError) ToJSONString() string {
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

func (o *BulkGetStatCycleInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetStatCycleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
